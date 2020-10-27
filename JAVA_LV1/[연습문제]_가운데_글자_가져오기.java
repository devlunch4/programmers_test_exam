//코딩테스트 연습>연습문제>가운데 글자 가져오기

////////////////////////////////
class Solution {

	public String solution(String s) {
		String answer = "";

		if (s.length() % 2 == 0) {
			// 짝수인경우 절반일 경우 문자열 자리는 0부터 시작이므로 -1을 해주고
			// 그다움 문자열 길이 2개를 가져와야하므로 마지막 길이자리를 가져올수 있도록
			// 해당 절반의 위치+1 해준다.
			answer = s.substring(s.length() / 2 - 1, s.length() / 2 + 1);
		} else {
			// 해당위치 값 1개 가져오기 (해당위치, 해당위치 전까지)
			answer = s.substring(s.length() / 2, s.length() / 2 + 1);
		}
		return answer;
	}
}
////////////////////////////////


