#datetime
today = new Date
day = today.getDate()
month = today.getMonth()
year = today.getFullYear()
monthList = ['Jan', 'Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec']
document.getElementsByClassName('result').innerHTML = day + monthList[month] + year

console.log(day + monthList[month] + year);
