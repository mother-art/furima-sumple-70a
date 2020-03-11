$(document).on('turbolinks:load', ()=> {
  // 画像用のinputを生成する関数
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
  // プレビュー用のimgタグを生成する関数
  const buildImg = (index, url)=> {
    const html = `<img data-index="${index}" src="${url}" class="previews__image" width="100px" height="100px">`;
    return html;
  }
  
  // file_fieldのnameに動的なindexをつける為の配列
  let fileIndex = [1,2,3,4,5];
  // 既に使われているindexを除外
  lastIndex = $('.js-file_group:last').data('index');
  fileIndex.splice(0, lastIndex);

  $('.hidden-destroy').hide();

  $('#image-box').on('change', '.js-file', function(e) {
    console.log($(this).parent().data('index'))
    const targetIndex = $(this).parent().data('index');
    // ファイルのブラウザ上でのURLを取得する
    const file = e.target.files[0];
    const blobUrl = window.URL.createObjectURL(file);

    // 該当indexを持つimgがあれば取得して変数imgに入れる(画像変更の処理)
    if (img = $(`img[data-index="${targetIndex}"]`)[0]) {
      console.log("あかん！")
      img.setAttribute('src', blobUrl);

    } else if (6 == (fileIndex[0])){
      console.log("きたぜええええええ")
    } else {  
      // 新規画像追加の処理
      console.log("良いね！")
      $('.previews').append(buildImg(targetIndex, blobUrl));
      // fileIndexの先頭の数字を使ってinputを作る
      $('.input-btn').append(buildFileField(fileIndex[0]));
      fileIndex.shift();
      // 末尾の数に1足した数を追加する
      fileIndex.push(fileIndex[fileIndex.length - 1] + 1);
      console.log("きてますきてます")
      console.log($(this).parent().data('index'))
    }
  });

  // $('#image-box').on('click', '.js-remove', function() {
  //   console.log("消す！！")
  //   const targetIndex = $(this).parent().data('index');
  //   $(this).parent().remove();
  //   $(`img[data-index="${targetIndex}"]`).remove();

  //   // 画像入力欄が0個にならないようにしておく
  //   if ($('.js-file').length == 0) $('#image-box').append(buildFileField(fileIndex[0]));
  // });
});