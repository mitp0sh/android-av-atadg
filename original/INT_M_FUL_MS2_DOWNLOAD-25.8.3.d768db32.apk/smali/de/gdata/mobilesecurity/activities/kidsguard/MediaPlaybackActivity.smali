.class public Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity;
.super Lde/gdata/mobilesecurity/intents/GdActionBarActivity;
.source "SourceFile"


# static fields
.field public static final CONTEXT_DEVICE_POLICY_SERVICE:Ljava/lang/String; = "device_policy"

.field public static context:Landroid/content/Context;

.field public static monitoring:Z


# instance fields
.field private b:Landroid/widget/VideoView;

.field private c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

.field private d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lde/gdata/mobilesecurity/intents/GdActionBarActivity;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity;->d:Ljava/lang/Object;

    .line 127
    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity;->d:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity;)Landroid/widget/VideoView;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity;->b:Landroid/widget/VideoView;

    return-object v0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 124
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdActionBarActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 119
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public doLock()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 91
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity;->c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setKidsguardUsageTimeExceededShown(Z)V

    .line 93
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1, v2}, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->lockPhone(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 95
    sput-boolean v2, Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity;->monitoring:Z

    .line 97
    new-instance v0, Lde/gdata/mobilesecurity/activities/kidsguard/bk;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/bk;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity;)V

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 104
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity;->finish()V

    .line 105
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 38
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity;->requestWindowFeature(I)Z

    .line 41
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 43
    const v0, 0x7f03005c

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity;->setContentView(I)V

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/raw/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f06000a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 47
    const v0, 0x7f0b0204

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity;->b:Landroid/widget/VideoView;

    .line 48
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity;->b:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 49
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 51
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity;->context:Landroid/content/Context;

    .line 53
    sput-boolean v2, Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity;->monitoring:Z

    .line 55
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    sget-object v1, Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity;->c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 57
    new-instance v0, Lde/gdata/mobilesecurity/activities/kidsguard/bi;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/bi;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity;)V

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/bi;->start()V

    .line 78
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity;->b:Landroid/widget/VideoView;

    new-instance v1, Lde/gdata/mobilesecurity/activities/kidsguard/bj;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/bj;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 88
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Lde/gdata/mobilesecurity/intents/GdActionBarActivity;->onDestroy()V

    .line 110
    const/4 v0, 0x0

    sput-boolean v0, Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity;->monitoring:Z

    .line 111
    return-void
.end method
