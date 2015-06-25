.class public Lde/gdata/mobilesecurity/services/WidgetService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private volatile a:Ljava/lang/String;

.field private volatile b:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 18
    iput-object v0, p0, Lde/gdata/mobilesecurity/services/WidgetService;->a:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lde/gdata/mobilesecurity/services/WidgetService;->b:Landroid/content/Context;

    .line 26
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Profile in startService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 66
    iput-object v0, p0, Lde/gdata/mobilesecurity/services/WidgetService;->b:Landroid/content/Context;

    .line 67
    iget-object v1, p0, Lde/gdata/mobilesecurity/services/WidgetService;->a:Ljava/lang/String;

    iput-object v1, p0, Lde/gdata/mobilesecurity/services/WidgetService;->a:Ljava/lang/String;

    .line 69
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 70
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 71
    const-class v2, Lde/gdata/mobilesecurity/intents/ProfileSelector;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 74
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WidgetService;->stopSelf()V

    .line 75
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 30
    const-string v0, "WidgetService::onBind"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 50
    const-string v0, "WidgetService starting ..."

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 56
    const-string v0, "WidgetService stoppping ..."

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    .prologue
    .line 37
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 39
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lde/gdata/mobilesecurity/mms/ProfileWidgetProvider;->CHOOSE_PROFILE:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/services/WidgetService;->a(Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x2

    return v0
.end method
