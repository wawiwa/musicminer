package org.musicalpatriots.service.businesslogic;

public class RatingLogic {
	
	public enum RateWeight {

		STYLE (5),
		TECHNIQUE (5),
		ACCOMPANIMENT (5),
		RHYTHM (4),
		FLEXIBILITY (9),
		CONNECTIONS (5),
		RANGE (9),
		ARTICULATION (6),
		MERIT (5);
		
		private int value;
		
		private RateWeight(int value) {
			this.value = value;
		}

	};

	public static double getDifficulty(int style, int technique, int accompaniment, int rhythm,
			int flexibility,int connections,int range,
			int articulation,int merit) {

		double numer = 0.0;

		double denom = 0.0;

		for(RateWeight rw : RateWeight.values()) {
			denom += rw.value;
		}

		numer =
				style*RateWeight.STYLE.value +
				technique*RateWeight.TECHNIQUE.value +
				accompaniment*RateWeight.ACCOMPANIMENT.value +
				rhythm*RateWeight.RHYTHM.value +
				flexibility*RateWeight.FLEXIBILITY.value +
				connections*RateWeight.CONNECTIONS.value +
				range*RateWeight.RANGE.value +
				articulation*RateWeight.ARTICULATION.value +
				merit*RateWeight.MERIT.value;

		return numer/denom;

	}
	
	public static void main(String [] args) {
		System.out.println("rating logic: "+RatingLogic.getDifficulty(1, 1, 0, 0, 0, 1, 1, 1, 1));
	}
	
}
