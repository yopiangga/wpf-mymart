<?php

class HomeCest extends \Codeception\Test\Unit
{
    /**
     * @var \AcceptanceTester
     */
    protected $tester;

    // tests
    public function testSomeFeature(AcceptanceTester $I)
    {
        $I->amOnPage('/login');
        // $I->amOnPage('/');
        // $I->see('h1', 'Congratulation!');
    }
}