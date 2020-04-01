baseline
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec 
			baseline: 'FFICHeaderExtractor' with: [
				spec repository: 'github://marianopeck/FFICHeaderExtractor:9bc3957797a46a2d7ab213579c6c80737dc9db1d/repository' ];
			baseline: 'Unicode' with: [
				spec repository: 'github://feenkcom/pharo-unicode:6e54f5390e016715733e2ff49c8fca864f4f9b21/repository' ].
		spec 
			package: 'OSSubprocess' with: [
				spec requires: #('FFICHeaderExtractor' ). ];
			package: 'OSSubprocess-Tests-Unit' with: [
				spec requires: #('OSSubprocess' 'Unicode' ). ];
			package: 'OSSubprocess-Tests-Stress' with: [
				spec requires: #('OSSubprocess-Tests-Unit' ). ]. ].
