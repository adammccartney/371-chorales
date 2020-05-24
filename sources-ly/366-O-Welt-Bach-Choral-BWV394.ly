
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 394" }
      piece = \markup { \hspace #9 \fontsize #2 \bold \column \center-align { \line { "O Welt, ich muß dich lassen" }
                     \line { \italic "old: O Welt, sieh hier dein Leben" }
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
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
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
        cis8 b |
        a4 b cis8 d e4 |
        d2 cis4\fermata cis8 d |
        e4 e b cis8 b |
        a2 gis4\fermata e |
        a4 b cis8 b cis d |
        b2\fermata r4 cis8 b |
        a4 b cis8 d e4 |
        d2 cis4\fermata cis8 d |
        e4 e b cis8 b |
        a2 gis4\fermata e |
        a4 b cis8 d e d |
        cis4 b a\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        a8 gis |
        fis4. gis8 a4. e8 |
        fis4 e e a |
        a8 gis a b gis fis e4 |
        e4 dis e b |
        e8 fis gis4 a8 gis a b |
        gis2 r4 gis4 |
        fis4 e e8 d cis4 |
        cis8 b16 a b4 a a' |
        b8 cis b a gis fis gis4 |
	gis8 fis16 e fis4 e e8 d |
        cis8 d cis b a4 a' |
        e8 fis b, e cis4
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
        e4 |
        fis8 e d4 e a, |
        a4 gis a e' |
        e4 e e8 d cis4 |
        cis4 b b gis |
        a4 d e8 d e fis |
        e2 r4 eis4 |
        cis8 d cis b a4 a |
        a8 fis'4 e8 e4 fis |
        e4 b b8 a gis fis |
        e8 cis'4 b8 b4 cis8 b |
        a4 gis8 fis e4. fis8 |
        gis8 a4 gis8 e4
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        a4 |
        d8 cis b4 a cis, |
        b4 e a,\fermata a'8 b |
        cis4 cis,8 d e4 a8 gis |
        fis4 b, e\fermata e8 d |
        cis8 d cis b a4 a'8 d, |
        e2\fermata r4 cis4 |
        fis4 gis a8 b a gis |
        fis4 gis a\fermata fis |
        gis8 a gis fis e fis e dis |
        cis4 dis e\fermata cis |
        fis4 e8 d cis b cis d |
        e8 d e4 a,\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "366." }
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

