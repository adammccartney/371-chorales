
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 324" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Meine Seel erhebt den Herren" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        R1 |
        R1 |
        R1 |
        R1 |
        \tempo 4 = 64 r1 \tempo 4 = 128 |
        R1 |
%%%%%%%%%%%%%%%%%%%%%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        \set Timing.measureLength = #(ly:make-moment 16 4)
        r\breve  % M. G = r4 r4 r4 r4 r4 r4 r4 r4 r2
        r\breve |

        \set Timing.measureLength = #(ly:make-moment 2 4)
        r2 |
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        \set Timing.measureLength = #(ly:make-moment 4 4)
        R1 |
        \tempo 4 = 64 r1 |
	}

  upper = {
	\time 4/4
        \key e \minor
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        b2 d |
        b4 b b b |
        c2 b |
        a2 a |
        g1\fermata |
        b2 d |
%%%%%%%%%%%%%%%%%%%%%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        \override NoteHead #'style = #'petrucci
        \set Timing.measureLength = #(ly:make-moment 16 4)
        a\breve  % M. G = a4 a a a a a a a e2
        a\breve |
        
	\override NoteHead #'style = #'default
        \set Timing.measureLength = #(ly:make-moment 2 4)
        e2 |
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        \set Timing.measureLength = #(ly:make-moment 4 4)
        g2 fis |
        e1\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        e2 d |
        d4 dis e fis |
        e4 d2 e4 |
        e2 d |
        d1 |
        d1 |
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        \override NoteHead #'style = #'petrucci
        \set Timing.measureLength = #(ly:make-moment 16 4)
        d\breve  % M. G = d4 d d d d d d d e2
        d\breve |
        
        \override NoteHead #'style = #'default
        \set Timing.measureLength = #(ly:make-moment 2 4)
        e2 |
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        \set Timing.measureLength = #(ly:make-moment 4 4)
        e2 dis |
        b1 |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
        \time 4/4
        \key e \minor
	\clef bass
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        g2 a |
        b4 a g fis |
        g4 a2 g4 |
        g2 fis |
        b1 |
        g1 |
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        \override NoteHead #'style = #'petrucci
        \set Timing.measureLength = #(ly:make-moment 16 4)
        fis\breve  % M. G = fis4 fis fis fis fis fis fis fis a2
        fis\breve |
        
        \override NoteHead #'style = #'default
        \set Timing.measureLength = #(ly:make-moment 2 4)
        a2 |
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        \set Timing.measureLength = #(ly:make-moment 4 4)
        b2. a4 |
        g1 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        e2 fis |
        g4 fis e dis |
        e4 fis g e |
        c4 a d2 |
        g,1\fermata |
        g'2 b, |
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        \override NoteHead #'style = #'petrucci
        \set Timing.measureLength = #(ly:make-moment 16 4)
        d\breve  % M. G = d4 d d d d d d d c2
        d\breve |
        
        \override NoteHead #'style = #'default
        \set Timing.measureLength = #(ly:make-moment 2 4)
        c2 |
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        \set Timing.measureLength = #(ly:make-moment 4 4)
        b4 a b2 |
        e,1\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "130." }
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
      tempoWholesPerMinute = #(ly:make-moment 128 4)
		}
	    }
	}

