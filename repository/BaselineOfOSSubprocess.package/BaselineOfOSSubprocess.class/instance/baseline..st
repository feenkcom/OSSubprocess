baseline
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec 
			baseline: 'FFICHeaderExtractor' with: [
				spec repository: 'github://pharo-contributions/FFICHeaderExtractor:v1.0.2/repository' ];
			baseline: 'Unicode' with: [
				spec repository: 'github://feenkcom/pharo-unicode:v0.6.0/repository' ].
		spec 
			package: 'OSSubprocess' with: [
				spec requires: #('FFICHeaderExtractor' ). ];
			package: 'OSSubprocess-Tests-Unit' with: [
				spec requires: #('OSSubprocess' 'Unicode' ). ];
			package: 'OSSubprocess-Tests-Stress' with: [
				spec requires: #('OSSubprocess-Tests-Unit' ). ]. ].
