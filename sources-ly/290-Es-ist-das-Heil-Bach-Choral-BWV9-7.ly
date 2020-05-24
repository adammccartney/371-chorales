
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 9.7" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Es ist das Heil uns kommen her" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
	\repeat volta 2 {
        r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 } %fin du repeat
        r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 
	}

  upper = {
	\time 4/4
	\key e \major
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        b4 |
        b4 b b8 cis d4 |
        cis4 b a\fermata b8 a |
        gis8 fis e fis gis4 ais |
        b4 cis b\fermata } %fin du repeat
        b4 |
        e4 dis cis dis |
        e8 dis cis4 b\fermata b |
        e4 b cis gis8 a |
        b4 a gis\fermata gis |
        fis8 gis a4 gis fis |
        cis4 dis4 e4\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        gis4 |
        fis8 gis a4 gis8 a b4 |
        b8 a d, e fis4 fis |
        e4 b e cis |
        fis4. e8 dis4 } %fin du repeat
        e8 fis |
        gis8 ais b4 ais!8 gis fis4 |
        b8 gis ais4 fis gis8 a |
        b8 a gis fis eis fis gis cis, |
        cis8 gis' gis fis fis8 eis8\fermata eis4 |
        fis8 e! dis cis b cis dis4 |
        e4 b4 b4
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key e \major
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        e4 |
        b4 fis' e e |
        e8 fis g4 d b |
        b8 a gis4 cis fis, |
        fis8 b ais4 fis } %fin du repeat
        gis4 |
        cis4 dis8 e fis4 b, |
        b4 fis'8 e dis4 e |
        b8 cis d4 cis8 dis eis fis |
        gis8 cis, cis4 cis cis |
        cis8 b a4 e' b8 a |
        g4 fis8 a!8 gis4
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        e4 |
        e4 dis e gis, |
        a4 b8 cis d4\fermata dis |
        e4. dis8 cis dis e fis |
        dis8 b fis'4 b,\fermata } %fin du repeat
        e8 dis |
        cis4 b fis'8 gis a! fis |
        gis8 e fis4 b,\fermata e8 fis |
        gis8 a b4 b8 a gis fis |
        eis4 fis cis\fermata cis'8 b |
        a8 gis fis4 gis8 a b4 |
        b8 ais8 b4 e,\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "290." }
	\new Staff = "upper" \upper
	\new Staff = "lower" \lower
	>>

    \layout {
%	ragged-last = ##f
	   }

         } % fin de score

  \score {
    \unfoldRepeats { << \guidemidi \upper \lower >> }
    \midi {
    \context {
     \Staff
      \remove "Staff_performer"
               }

     \context {
      \Voice
       \consists "Staff_performer"
                }

     \context { 
      \Score
      tempoWholesPerMinute = #(ly:make-moment 78 4)
		}
	    }
	}

