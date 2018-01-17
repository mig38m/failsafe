axios = require('axios')
l = console.log

require('http').createServer((req,res)=>{

  
  res.status = 200

  if(req.url == '/'){
    res.end(`
    <h1>Failsafe Demo</h1>

    <p>You are </p>

    <html><body>
    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>

<script>
FS = (method, params={})=>{
  return new Promise((resolve,reject)=>{
    var id = FS.resolvers.push(resolve) - 1

    FS.frame.contentWindow.postMessage({
      method: method,
      params: params,
      id: id
    }, FS.origin)

  })
}

var hash = location.hash.split('auth_code=')
if(hash[1]){
  localStorage.auth_code = hash[1].replace(/[^a-z0-9]/g,'')
  history.replaceState(null,null,'/#wallet')
}

FS.frame=false;
FS.origin = 'http://0.0.0.0:8001'
FS.frame=document.createElement('iframe');
FS.frame.style.display = 'none'
FS.frame.src=FS.origin+'/sdk.html'
document.body.appendChild(FS.frame)
FS.onready = fn => {
  if(FS.ready == true){
    fn()
  }else{
    FS.ready = fn
  }
}
FS.resolvers = [()=>{
  if(FS.ready){
    FS.ready()
    FS.ready = true
  }
}]
window.addEventListener('message', function(e){
  if(e.origin == FS.origin){
    var data = JSON.parse(e.data)

    FS.resolvers[data.id](data.result)
    
  }
})

</script>
<script>
//FYI sandbox="allow-scripts allow-modals" won't bypass it btw

window.onload = function(){
  donat.onclick = function(){
    axios.post('/init', {
      amount: parseInt(amount.value)
    }).then(r=>{
      console.log(r)
      FS('pay', r.data).then(data=>{
        if(data.status == 'paid'){
          donat.style['background-color'] = 'gold'
          setTimeout(()=>{
            donat.style['background-color'] = ''
          },500)
        }
      })
 
    })
  }
}
</script>

<div id="zone">
  
  <input id=amount placeholder="Amount">
  <button width="200px" id="donat">Deposit</button
</div>

</body></html>



      `)
  }else if(req.url == '/init'){
    var queryData = ''
    req.on('data', function(data) { queryData += data })

    req.on('end', function() {
      var p = JSON.parse(queryData)

      if(p.invoice){

      }else{ 
        l(req.url)
        axios.post('http://0.0.0.0:8002/invoice', {
          amount: p.amount,
          extra: 'uid'
        }).then(r=>{ 
          res.end(JSON.stringify(r.data)) 
        })
      }


    })



  }else{
    l('Not found')
  }


}).listen(3010)