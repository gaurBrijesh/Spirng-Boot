package com.nanosoft.tail.services;

import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class TailService {

	public List<String> fileDiff() throws IOException{
		
        final Path firstFile = Paths.get("/src/main/resources/a.txt");
        final Path secondFile = Paths.get("/src/main/resources/a.txt");
        final List<String> firstFileContent = Files.readAllLines(firstFile,
            Charset.defaultCharset());
        final List<String> secondFileContent = Files.readAllLines(secondFile,
            Charset.defaultCharset());

        return diffFiles(firstFileContent, secondFileContent);
        //System.out.println(diffFiles(secondFileContent, firstFileContent));
	}
	
	private static List<String> diffFiles(final List<String> firstFileContent,
	        final List<String> secondFileContent) {
	        final List<String> diff = new ArrayList<String>();
	        for (final String line : firstFileContent) {
	            if (!secondFileContent.contains(line)) {
	                diff.add(line);
	            }
	        }
	        return diff;
	    }
}
