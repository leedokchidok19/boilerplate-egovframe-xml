/**
 * 메인 화면 관련 js
 */

/** 앨범(Album) Display 변경 함수
	해쉬태그 클릭 시 값에 맞는 앨범을 보여준다
	@param {String}	type 해쉬태그의 dataset-type 값
*/
function albumDisplayHandler(type) {

	//앨범의 div 목록
	const album = document.querySelectorAll('#album > .col');

	//for문
	album.forEach( albumElement => {

//		console.log(albumElement.dataset.albumDisplay);
		const aDisplay = albumElement.dataset.albumDisplay;
//		console.log(`aDisplay: ${aDisplay}`);

		//해쉬 태그 타입 값 0 혹은 앨범의 갑과 같은 경우 앨범을 보여주고 아닌 경우는 앨범을 안 보여준다
		if(parseInt(type) === 0) albumElement.style.display = 'block';
		else if(parseInt(type) === parseInt(aDisplay)) albumElement.style.display = 'block';
		else albumElement.style.display = 'none';

	});

}//albumDisplayHandler

//해쉬태그 목록
const hashtag = document.querySelectorAll('#hashtag > li');

/** 해쉬태그(hashtag) 함수
	클릭된 해쉬태그 값을 가져온다
	@param {String}	tag 클릭된 해쉬태그의 dataset-type 값
*/
const hashtagHandler = (tag) => {

	const dataType = tag.target.dataset.type;

	albumDisplayHandler(dataType);

};//hashtagHandler

hashtag.forEach( element => element.addEventListener('click', hashtagHandler));
