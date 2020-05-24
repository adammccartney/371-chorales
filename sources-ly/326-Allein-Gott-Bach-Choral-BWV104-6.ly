
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 104.6" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Allein Gott in der Höh sei Ehr" }
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
	\key a \major
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        a8 b |
        cis4 d e d |
        cis4 b cis\fermata cis |
        cis4 b8 cis d cis b4 |
        a4 b a\fermata } %fin du repeat
        a4 |
        b4 cis d cis |
        b4 cis b\fermata b |
        cis4 d e d |
        cis4 b cis\fermata a |
        b4 cis d8 cis b4 |
        a8 fis gis4 a\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        e4 |
        a4 a gis fis8 gis |
        a4 gis a e |
        fis4 fis8 e d e e4 |
        e8 a gis fis e4 } %fin du repeat
        e4 |
        e4 e d8 e fis4 |
        fis8 e e d16 cis d4 e |
        e4 fis gis fis |
        e4 d8 fis16 eis fis4 fis |
        fis4 e d e |
        e8 fis e4 e
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key a \major
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        cis8 d |
        e4 fis b,8 cis d4 |
        e4 e e a, |
	a2 ~ a4 d8 b |
        e8 d16 cis d4 cis } %fin du repeat
        cis4 |
        gis4 ais b ais |
        b4 ais fis b |
        a4 a b a8 b |
        cis4 fis,8 gis a4 cis |
        fis,8 gis a4 a gis |
        a8 d b4 cis
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        a4 |
        a'8 gis fis4 e b |
        cis8 d e4 a,\fermata a'8 gis |
        fis8 e d cis b a gis4 |
        cis8 a e'4 a,\fermata } %fin du repeat
        a4 |
        e'4 d8 cis b4 e8 fis |
        g4 fis b,\fermata gis' |
        a8 gis fis4 e fis8 gis |
        a4 b fis\fermata fis8 e |
        d4 cis b8 cis d4 |
        cis8 d e4 a,\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "326." }
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

