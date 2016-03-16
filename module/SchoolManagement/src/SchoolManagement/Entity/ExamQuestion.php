<?php

namespace SchoolManagement\Entity;

use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\Collection;
use Doctrine\Common\Collections\ArrayCollection;

/**
 * Description of ExamQuestion
 *
 * @author Gabriel Pereira <rickardch@gmail.com>
 * @ORM\Table(name="exam_question")
 * @ORM\Entity
 */
class ExamQuestion
{

    const QUESTION_TYPE_CLOSED = 1;
    const QUESTION_TYPE_OPEN = 2;
    
    const QUESTION_TYPE_CLOSED_DESC = "Questão Fechada";
    const QUESTION_TYPE_OPEN_DESC = "Questão Aberta";
    
    /**
     *
     * @var integer 
     * @ORM\Column(name="exam_question_id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $examQuestionId;

    /**
     *
     * @var string 
     * @ORM\Column(name="exam_question_enunciation", type="string", nullable=false)
     */
    private $examQuestionEnunciation;

    /**
     *
     * @var integer 
     * @ORM\Column(name="exam_question_type", type="integer", nullable=false)
     */
    private $examQuestionType;

    /**
     *
     * @var Subject
     * @ORM\ManyToOne(targetEntity="Subject")
     * @ORM\JoinColumn(name="subject_id", referencedColumnName="subject_id")
     */
    private $subject;

    /**
     *
     * @var ExamAnswer
     * @ORM\ManyToMany(targetEntity="ExamAnswer", cascade={"persist", "remove"}, orphanRemoval=true)
     * @ORM\JoinTable(name="answer_options",
     *      joinColumns={@ORM\JoinColumn(name="exam_question_id", referencedColumnName="exam_question_id", onDelete="CASCADE")},
     *      inverseJoinColumns={@ORM\JoinColumn(name="exam_answer_id", referencedColumnName="exam_answer_id", unique=true, onDelete="CASCADE")}
     *      )
     */
    private $answerOptions;

    public function __construct()
    {
        $this->answerOptions = new ArrayCollection();
    }

    /**
     * 
     * @return integer
     */
    function getExamQuestionId()
    {
        return $this->examQuestionId;
    }

    /**
     * 
     * @return string
     */
    function getExamQuestionEnunciation()
    {
        return $this->examQuestionEnunciation;
    }

    /**
     * 
     * @return integer
     */
    function getExamQuestionType()
    {
        return $this->examQuestionType;
    }

    /**
     * 
     * @return Subject
     */
    function getSubject()
    {
        return $this->subject;
    }

    /**
     * 
     * @return Doctrine\Common\Collections\ArrayCollection
     */
    function getAnswerOptions()
    {
        return $this->answerOptions;
    }

    /**
     * 
     * @param string $examQuestionEnunciation
     * @return ExamQuestion
     */
    function setExamQuestionEnunciation($examQuestionEnunciation)
    {
        $this->examQuestionEnunciation = $examQuestionEnunciation;
        return $this;
    }

    /**
     * 
     * @param integer $examQuestionType
     * @return ExamQuestion
     */
    function setExamQuestionType($examQuestionType)
    {
        $this->examQuestionType = $examQuestionType;
        return $this;
    }

    /**
     * 
     * @param Subject $subject
     * @return ExamQuestion
     */
    function setSubject($subject)
    {
        $this->subject = $subject;
        return $this;
    }

    /**
     * 
     * @param Doctrine\Common\Collections\ArrayCollection $answerOptions
     * @return ExamQuestion
     */
    function setAnswerOptions($answerOptions)
    {
        $this->answerOptions = $answerOptions;
        return $this;
    }

    /**
     *
     * @param Collection $answers
     * @return ExamQuestion
     */
    function addAnswerOptions(Collection $answers)
    {
        foreach ($answers as $ans) {
            $this->answerOptions->add($ans);
        }
        return $this;
    }

    /**
     * 
     * @param Collection $answers
     * @return ExamQuestion
     */
    function removeAnswerOptions(Collection $answers)
    {
        foreach ($answers as $ans) {
            $this->answerOptions->removeElement($ans);
        }
        return $this;
    }

    /**
     * 
     * @param ExamAnswer $answer
     * @return boolean
     */
    function hasAnswer($answer)
    {
        return $this->answerOptions->contains($answer);
    }

}