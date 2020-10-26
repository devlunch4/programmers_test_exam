--코딩테스트 연습>정렬>K번째수

//////////////////////
import java.util.Arrays;

class Solution {
	public int[] solution(int[] array, int[][] commands) {
		// 반환할 변수 설정
		int[] answer = new int[commands.length];
		// for문으로 반복
		for (int i = 0; i < commands.length; i++) {
			// command의 인덱스 0,1은 0시작1끝의 array자리수를 설정
			int[] temp = Arrays.copyOfRange(array, commands[i][0] - 1, commands[i][1]);
			Arrays.sort(temp);
			// 뽑아내고 정렬한 temp배열에서 commands인덱스2번자리의 숫자로 temp인덱스의 숫자를 뽑아냄
			answer[i] = temp[commands[i][2] - 1];
		}
		return answer;
	}
}

//////////////////////
