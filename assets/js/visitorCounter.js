const url = 'https://u5s76wgqz1.execute-api.us-east-1.amazonaws.com/prod/update-crc-counter'

// Triggers API
async function getData() {
   const response = await fetch(url, {
      method: 'POST',
      headers: {'Content-Type': 'application/json'} 
   })

   const data = await response.json()

   // Inserts the number of page views
   document.getElementById('counterScript').innerHTML = `Views: ${data}`
}

getData()