
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 108.6" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Kommt her zu mir, spricht Gottes Söhn" }
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
        R1 |
        \tempo 4 = 30 r4 \tempo 4 = 78 r2. |
        R1 |
        \tempo 4 = 30 r4 \tempo 4 = 78 r2. |
        R1 |
        \tempo 4 = 30 r4 \tempo 4 = 78 r2. |
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
        b4 b fis' e |
        fis8 e d4 cis\fermata b8 cis |
        d4 cis d8 e fis4 |
        e4 d cis\fermata d8 cis |
        b4 b e4. d8 |
        cis8 d16 e d8 cis b2 |
        a4\fermata a d cis |
        d8 e fis4 e d |
        cis4\fermata b8 cis d4 cis |
        d8 e fis4 e d |
        cis4\fermata fis fis fis |
        e4. d8 cis4 d8 e |
        cis2 b4\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        fis4 |
        g4 g fis8 gis ais b |
        cis4 b ais b8 ais |
        b4 fis fis fis |
        b8 cis fis, gis ais4 b |
        fis4 e8 fis gis2 |
        a4 a a gis |
        e4 fis b cis8 ais |
        b4 b b8 cis fis,4 |
        fis4 fis e e |
        fis8 g a4 g fis |
        fis4 fis8 e d fis b a |
        g8 fis e4 ~ e d8 g |
        g4 fis8 e dis4
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key b \minor
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        d4 |
        e4 e d g! |
        fis4 fis fis fis8 e |
        fis4 fis8 e d cis b d |
        d8 cis d b cis4 fis8 e |
        d8 cis b4 b cis8 d |
        e4 a, fis' e8 d |
        cis4 d8 e fis4 fis |
        fis8 e d4 d8 cis cis b |
        ais4 d8 cis b gis a4 |
        a4 d d8 cis cis b |
        ais4 cis cis b |
        b2 a8 g' fis b, |
        b4 ais fis
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        b4 |
        e8 fis g a b d cis b |
        ais8 fis b b, fis'4\fermata d8 cis |
        b8 b' ais fis b8 cis d8 b |
        gis8 ais b b, fis'4\fermata b, |
        b'8 a gis fis e d cis b |
        a8 cis fis e d b e e, |
        a4\fermata d8 cis b b' ais fis |
        b8 cis d b gis ais b b, |
        fis'4\fermata b8 a gis e a! g |
        fis8 e d cis b ais b4 |
        fis'4\fermata ais, b8 cis d dis |
        e8 fis g gis a! ais b g |
        e8 cis fis fis, b4\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "45." }
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

