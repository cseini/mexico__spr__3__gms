package com.gms.web.domain;

import org.springframework.stereotype.Component;

import lombok.Data;
@Component
@Data
public class Member {
	private String userid,
			ssn, 
			name,
			gender,
			age,
			roll, 
			teamid,
			password;
}
