//
//  TumblrRootViewController.m
//  TumblrExample
//
//  Created by Ramiro Guerrero & Marco Graciano on 4/24/13.
//
//    Copyright (c) 2013 Weston McBride
//
//    Permission is hereby granted, free of charge, to any
//    person obtaining a copy of this software and associated
//    documentation files (the "Software"), to deal in the
//    Software without restriction, including without limitation
//    the rights to use, copy, modify, merge, publish,
//    distribute, sublicense, and/or sell copies of the
//    Software, and to permit persons to whom the Software is
//    furnished to do so, subject to the following conditions:
//
//    The above copyright notice and this permission notice
//    shall be included in all copies or substantial portions of
//    the Software.
//
//    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY
//    KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
//    WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
//    PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS
//    OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR
//    OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
//    OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
//    SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


#import "TumblrRootViewController.h"

@interface TumblrRootViewController ()

@end

@implementation TumblrRootViewController
@synthesize imageView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    imageView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 128, 128)];
    [self.view addSubview:imageView];
    self.imageView.backgroundColor = [UIColor whiteColor];
    self.imageView.contentMode = UIViewContentModeCenter;
    
    //COMMENT AND UNCOMMENT THE FOLLOWING LINES TO TEST THE API METHODS, check for the responseObject in the console output.
    //IT MIGHT BE NECESSARY TO PASS VALID PARAMETERS TO THE METHODS
	
    //BLOG METHODS TESTING:
    //[[RMMasterSDK TumblrSDK] getBlogInfoWithBaseHostname:@"good.tumblr.com" AndWithDelegate:nil];
    [[RMMasterSDK TumblrSDK] getBlogAvatarWithBaseHostname:@"david.tumblr.com" AndSize:@"128" AndWithDelegate:self];
    //[[RMMasterSDK TumblrSDK] getBlogLikesWithBaseHostname:@"good.tumblr.com" AndLimit:@"5" AndOffset:@"3" AndWithDelegate:nil];
    //For this method the base hostname must be the one of the logged-in user:
    //[[RMMasterSDK TumblrSDK] getBlogFollowersWithBaseHostname:@"marco85msg.tumblr.com" AndLimit:nil AndOffset:nil AndWithDelegate:nil];
    /*NSDictionary *params = [NSDictionary dictionaryWithObjectsAndKeys:@"10", @"limit", nil];
     [[RMMasterSDK TumblrSDK] getBlogPublishedPostsWithBaseHostname:@"good.tumblr.com" AndPostType:@"photo" AndParameters:params AndWithDelegate:nil];*/
    //For this method the base hostname must be the one of the logged-in user:
    //[[RMMasterSDK TumblrSDK] getBlogQueuedPostsWithBaseHostname:@"marco85msg.tumblr.com" AndLimit:nil AndOffset:nil AndFilter:nil AndWithDelegate:nil];
    //For this method the base hostname must be the one of the logged-in user:
    //[[RMMasterSDK TumblrSDK] getBlogDraftPostsWithBaseHostname:@"marco85msg.tumblr.com" AndFilter:nil AndWithDelegate:nil];
    //For this method the base hostname must be the one of the logged-in user:
    //[[RMMasterSDK TumblrSDK] getBlogSubmissionPostsWithBaseHostname:@"marco85msg.tumblr.com" AndOffset:nil AndFilter:nil AndWithDelegate:nil];
    
    //POST CREATION
    //For this method the base hostname must be the one of the logged-in user:
    // [[RMMasterSDK TumblrSDK] postCreateANewBlogPHOTOPostWithBaseHostname:@"zarph.tumblr.com" AndSource:nil OrImage:[UIImage imageNamed:@"51112.jpg"] AndParameters:nil AndWithDelegate:nil];
    //For this method the base hostname must be the one of the logged-in user:
    // [[RMMasterSDK TumblrSDK] postCreateANewBlogTEXTPostWithBaseHostname:@"zarph.tumblr.com" AndBody:@"Test" AndParameters:nil AndWithDelegate:nil];
    //For this method the base hostname must be the one of the logged-in user:
    // [[RMMasterSDK TumblrSDK] postCreateANewBlogQUOTEPostWithBaseHostname:@"zarph.tumblr.com" AndQuote:@"Quoting" AndParameters:nil AndWithDelegate:nil];
    //For this method the base hostname must be the one of the logged-in user:
    // [[RMMasterSDK TumblrSDK] postCreateANewBlogLINKPostWithBaseHostname:@"zarph.tumblr.com" AndLink:@"http://thelink.com" AndParameters:nil AndWithDelegate:nil];
    //For this method the base hostname must be the one of the logged-in user:
    // [[RMMasterSDK TumblrSDK] postCreateANewBlogCHATPostWithBaseHostname:@"zarph.tumblr.com" AndConversation:@"CONVO" AndParameters:nil AndWithDelegate:nil];
    //For this method the base hostname must be the one of the logged-in user:
    /*NSString *audioFile = [[NSBundle mainBundle] pathForResource:@"Moderato" ofType:@"mp3"];
     NSData *audioData = [NSData dataWithContentsOfFile:audioFile];
     [[RMMasterSDK TumblrSDK] postCreateANewBlogAUDIOPostWithBaseHostname:@"zarph.tumblr.com" AndSource:nil OrAudioData:audioData AndParameters:nil AndWithDelegate:nil];*/
    //For this method the base hostname must be the one of the logged-in user:
    /*NSString *videoFile = [[NSBundle mainBundle] pathForResource:@"test_video" ofType:@"MOV"];
     NSData *videoData = [NSData dataWithContentsOfFile:videoFile];
     [[RMMasterSDK TumblrSDK] postCreateANewBlogVIDEOPostWithBaseHostname:@"marco85msg.tumblr.com" AndCaption:@"This is a test" AndEmbedCode:nil OrVideoData:videoData AndWithDelegate:nil];*/
    
    //POST EDIT / REBLOG / DELETE
    //For this method the base hostname must be the one of the logged-in user:
    //  NSDictionary *params = [NSDictionary dictionaryWithObjectsAndKeys:@"Testing is fun!", @"body", nil];
    // [[RMMasterSDK TumblrSDK] postEditPostWithBaseHostname:@"zarph.tumblr.com" AndPostId:@"47817133365" AndType:@"text" AndParameters:params AndWithDelegate:nil];
    //For this method the base hostname must be the one of the logged-in user:
    // [[RMMasterSDK TumblrSDK] postReblogPostWithBaseHostname:@"zarph.tumblr.com" AndPostId:@"47817109770" AndReblogKey:@"wL8ltLDl" AndType:@"text" AndParameters:nil AndWithDelegate:nil];
    //For this method the base hostname must be the one of the logged-in user:
    //[[RMMasterSDK TumblrSDK] postDeletePostWithBaseHostname:@"zarph.tumblr.com" AndPostId:@"47817133365" AndWithDelegate:nil];
    
    
    //USER METHODS TESTING:
    //[[RMMasterSDK TumblrSDK] getUserInfoWithDelegate:nil];
    //[[RMMasterSDK TumblrSDK] getUserDashboardWithPostType:nil AndLimit:nil AndOffset:nil AndParameters:nil AndWithDelegate:nil];
    //[[RMMasterSDK TumblrSDK] getUserLikesWithLimit:nil AndOffset:nil AndWithDelegate:nil];
    //[[RMMasterSDK TumblrSDK] getUserFollowingWithLimit:nil AndOffset:nil AndWithDelegate:nil];
    //[[RMMasterSDK TumblrSDK] postUserFollowBlogWithBlogURL:@"zarph.tumblr.com" AndWithDelegate:nil];
    //[[RMMasterSDK TumblrSDK] postUserUnfollowBlogWithBlogURL:@"zarph.tumblr.com" AndWithDelegate:nil];
    //[[RMMasterSDK TumblrSDK] postUserLikePostWithPostId:@"47499117261" AndReblogKey:@"uDtCTp2h" AndWithDelegate:nil];
    //[[RMMasterSDK TumblrSDK] postUserUnlikePostWithPostId:@"47499117261" AndReblogKey:@"uDtCTp2h" AndWithDelegate:nil];
    
    //TAGGED METHOD TESTING:
    //[[RMMasterSDK TumblrSDK] getPostsWithTag:@"lol" AndLimit:nil AndFilter:nil AndBefore:nil AndWithDelegate:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)imageForImageViewWithImage:(UIImage *)image {
    self.imageView.image = image;
}

@end
