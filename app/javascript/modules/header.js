document.addEventListener('DOMContentLoaded', function() {

  function textAdd() {
    let block = document.getElementById('nav')
    insetElement = document.createElement('li');

    insetElement.textContent = 'TEST :' 'aaaa :';
    block.insertAdjacentElement('afterbegin', insetElement)
  }

  document.getElementById('nav').addEventListener('click', textAdd)
});
