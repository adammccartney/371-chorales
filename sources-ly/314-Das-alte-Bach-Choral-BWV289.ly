
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 289" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Das alte Jahr vergangen ist" }
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
	\key e \minor
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        b4 |
        b4 a8 g fis4 b |
        a8 g fis4 g\fermata b |
        b4 a8 g fis4 b |
        a8 g fis4 g\fermata b |
        cis4 dis e b8 cis! |
        d!4 cis b\fermata cis |
        d4 cis b b |
        a8 g fis4 g\fermata a |
        a4 b a8 g fis4 |
        g4 g fis4\fermata cis' |
        d4 cis b fis |
        b4 b ais\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        fis4 |
        g4 e d g |
        fis4 fis e gis |
        e2 ~ e8 d8 d4 |
        c4 c8 b b4 g' |
        g4 fis e e |
        fis4 fis fis fis |
        fis4 fis4 ~ fis8 d g8 fis |
        e4 d8 c b4 e |
        d4 d cis dis |
        e4 e4 ~ e8 d! fis4 |
        fis4 g fis fis |
        fis4 eis fis
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key e \minor
	\clef bass
	%\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        dis4 |
        e4 a, a d |
        d4 c8 b b4 e |
        e4 a, a f |
        e4 fis! e b' |
        a4 b b b |
        b4 ais8 e' d4 cis ~ |
	cis8 b8 ~ b8 a8 b4 b |
        c8 b a4 g g |
        fis4 g8 fis e4 b' |
        b4 b b cis |
        b4 ais b8 cis d8 cis |
        b4 cis cis
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        b8 a |
        g8 e cis4 d b8 g |
        d'4 dis e\fermata e8 d |
        c4 cis d gis, |
        a4 dis, e\fermata e' |
        a,4 a' gis g |
        fis8 e fis4 b, ais\fermata |
        b4 fis' g8 fis e d |
        c4 d g,\fermata cis |
        d4 g, a b |
        e,8 fis g a b4\fermata ais4 |
        b4 e d8 cis b a |
        gis4 cis fis,\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "314." }
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

