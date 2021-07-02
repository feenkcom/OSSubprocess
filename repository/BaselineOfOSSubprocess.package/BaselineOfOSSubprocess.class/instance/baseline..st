baseline
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec 
			baseline: 'FFICHeaderExtractor' with: [
				spec repository: 'github://pharo-contributions/FFICHeaderExtractor:v1.0.2/repository' ];
			baseline: 'Unicode' with: [
				spec repository: 'github://feenkcom/pharo-unicode:6e54f5390e016715733e2ff49c8fca864f4f9b21/src' ].
		spec 
			package: 'OldFileStream';
			package: 'OSSubprocess' with: [
				spec requires: #('FFICHeaderExtractor' 'OldFileStream' ). ];
			package: 'OSSubprocess-Tests-Unit' with: [
				spec requires: #('OSSubprocess' 'Unicode' ). ];
			package: 'OSSubprocess-Tests-Stress' with: [
				spec requires: #('OSSubprocess-Tests-Unit' ). ]. ].
