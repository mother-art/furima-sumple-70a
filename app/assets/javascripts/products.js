//= require turbolinks
$(document).on('turbolinks:load', ()=> {
  const buildFileField = (num)=> {
    const html = `<label class="image-label" for="product_item_images_attributes_${num}_src">
                    <div data-index="${num}" class="js-file_group" id="btn-${num}">
                      <i class="fas fa-camera-retro icon"></i>
                      <input class="js-file" type="file"
                      name="product[item_images_attributes][${num}][src]"
                      id="product_item_images_attributes_${num}_src">${num +1}枚目
                    </div>
                  </label>`;
    return html;
  }
  console.log("www")
  const buildImg = (index, url)=> {
    const html = `<img data-index="${index}" src="${url}" class="previews__image" width="100px" height="100px">`;
    return html;
  }
  let fileIndex = [1,2,3,4,5];
  lastIndex = $('.js-file_group:last').data('index');
  fileIndex.splice(0, lastIndex);
  $('.hidden-destroy').hide();
  $('#image-box').on('change', '.js-file', function(e) {
    const targetIndex = $(this).parent().data('index');
    const file = e.target.files[0];
    const blobUrl = window.URL.createObjectURL(file);
    if (img = $(`img[data-index="${targetIndex}"]`)[0]) {
      img.setAttribute('src', blobUrl);
    } else {  
      $('.previews').append(buildImg(targetIndex, blobUrl));
      $('.input-btn').append(buildFileField(fileIndex[0]));
      fileIndex.shift();
      fileIndex.push(fileIndex[fileIndex.length - 1] + 1);
    }
  });
});