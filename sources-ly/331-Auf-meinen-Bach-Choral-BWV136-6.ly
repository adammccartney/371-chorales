
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 136.6" }
      piece = \markup { \hspace #9 \fontsize #2 \bold \column \center-align { \line { "Auf meinen lieben Gott" }
                     \line { \italic "old: Wo soll ich fliehen hin" }
                 } }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        r4 |
        R1 |
        \tempo 4 = 40 r2. \tempo 4 = 78 r4 |
        R1 |
        \tempo 4 = 40 r2. \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 
	}

  upper = {
	\time 4/4
	\key b \minor
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        b4 |
        b4 cis d e |
        fis2.\fermata fis4 |
        fis4 e d e |
        cis2.\fermata cis4 |
        d4 e fis fis |
        e2 fis4\fermata fis |
        d4 e fis fis |
        e2 d4\fermata fis |
        a4 fis fis fis |
        e2 e4\fermata e |
        fis4 e d e8 d |
        cis2 b4\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        fis4 |
        g4 fis fis g |
        cis,2. fis4 |
        gis4 ais b cis |
        ais2. ais4 |
        b4 e, d a' |
        a2 ais4 fis |
        fis8 gis a4 a a |
        b4 a a a |
        a4 d cis b |
        b2 e,4 b' |
        cis4 cis fis, g |
        g4 fis fis
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key b \minor
	\clef bass
	%\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        d4 |
        e4 e d cis8 b |
        ais2. ais4 |
        b4 cis d g! |
        fis2. fis,4 |
        fis4 a a4. b8 |
        cis2 cis4 cis |
        b4 cis d d |
        d4 cis fis d |
        e4 a,8 d e cis d4 |
        d2 cis4 b |
        ais4 ais b b |
        b4 ais dis
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        b4 |
        e4 ais, b8 a g4 |
        fis2.\fermata e4 |
        d4 cis b e |
        fis2.\fermata fis4 |
        b,4 cis d8 e fis g |
        a8 b a g fis\fermata gis ais fis |
        b4 a!8 g fis e d fis |
        g8 e a a, d4\fermata d' |
        cis4 d ais b8 a |
        gis8 fis gis e a4\fermata g |
        fis8 e d cis b a' g fis |
        e8 cis fis fis, b4\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "331." }
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

