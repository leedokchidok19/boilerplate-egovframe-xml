/**
 * 
 */

const body = document.querySelector('body');
const MIN_DURATION = 10;//애니메이션 최소 지속시간

function makeSnowflake() {

	const snowflake = document.createElement('div');
	const delay = Math.random() * 10;
	const initialOpacity = Math.random();
	const duration = Math.random() * 20 + MIN_DURATION;//애니메이션 지속시간

	snowflake.classList.add('snowflake');
	snowflake.style.left = `${Math.random() * window.screen.width}px`;
	snowflake.style.animationDelay = `${delay}`;
	snowflake.style.opacity = initialOpacity;
	snowflake.style.animation = `fall ${duration}s linear`;
	
	body.appendChild(snowflake);
}

const today = new Date();
const month = today.getMonth()+1;

if(month>=11 || month<=2) {
	for(let index=0;index<50;index++) {
		setTimeout(makeSnowflake, 500 * index);//delay를 가지고 눈 내리기
	}
}
