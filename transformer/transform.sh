#!/bin/bash

function cd_transformer {
	transformer_cp=${cd_transformer}maven-transformer-plugin-1.0.0.Beta3.jar
	transformer_cp=${transformer_cp}:${cd_modules}org/javassist/main/javassist-3.15.0-GA.jar
	transformer_cp=${transformer_cp}:${cd_modules}org/hibernate/search/main/hibernate-search-engine-4.2.0.Beta1.jar
	transformer_cp=${transformer_cp}:${cd_modules}com/google/appengine/main/appengine-api-1.0-sdk-1.7.0.jar
	transformer_cp=${transformer_cp}:${cd_modules}org/jboss/capedwarf/main/*
	
	/usr/bin/java -classpath ${transformer_cp} \
	org.jboss.capedwarf.bytecode.CapedwarfTransformerMojo \
	${cd_modules}com/google/appengine/main/appengine-api-1.0-sdk-1.7.0.jar
}
