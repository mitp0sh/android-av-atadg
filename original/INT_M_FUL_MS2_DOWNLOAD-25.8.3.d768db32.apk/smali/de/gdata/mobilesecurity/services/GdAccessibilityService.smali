.class public Lde/gdata/mobilesecurity/services/GdAccessibilityService;
.super Landroid/accessibilityservice/AccessibilityService;
.source "SourceFile"


# static fields
.field public static final MINIMUM_REPORT_CYCLE:I = 0x32

.field public static final WINDOW_STATE_CHANGED:Ljava/lang/String; = "TYPE_WINDOW_STATE_CHANGED"

.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# instance fields
.field private c:Landroid/support/v4/content/LocalBroadcastManager;

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    sput-object v0, Lde/gdata/mobilesecurity/services/GdAccessibilityService;->a:Ljava/lang/String;

    .line 22
    sput-object v0, Lde/gdata/mobilesecurity/services/GdAccessibilityService;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lde/gdata/mobilesecurity/services/GdAccessibilityService;->d:J

    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 138
    new-instance v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-direct {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>()V

    .line 140
    const/4 v1, -0x1

    iput v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    .line 141
    const/16 v1, 0x10

    iput v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    .line 142
    const-wide/16 v2, 0x32

    iput-wide v2, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    .line 143
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    .line 145
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/services/GdAccessibilityService;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 146
    return-void
.end method

.method public static getTopActivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lde/gdata/mobilesecurity/services/GdAccessibilityService;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lde/gdata/mobilesecurity/services/GdAccessibilityService;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getTopTask()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lde/gdata/mobilesecurity/services/GdAccessibilityService;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lde/gdata/mobilesecurity/services/GdAccessibilityService;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public static popActivity(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public static pushActivity(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    sput-object p0, Lde/gdata/mobilesecurity/services/GdAccessibilityService;->b:Ljava/lang/String;

    .line 101
    return-void
.end method


# virtual methods
.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 77
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 79
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 81
    :pswitch_0
    sput-object v1, Lde/gdata/mobilesecurity/services/GdAccessibilityService;->a:Ljava/lang/String;

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lde/gdata/mobilesecurity/services/GdAccessibilityService;->d:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x32

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 84
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/GdAccessibilityService;->c:Landroid/support/v4/content/LocalBroadcastManager;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "TYPE_WINDOW_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lde/gdata/mobilesecurity/services/GdAccessibilityService;->d:J

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onCreate()V

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lde/gdata/mobilesecurity/services/GdAccessibilityService;->a:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    sput-object v0, Lde/gdata/mobilesecurity/services/GdAccessibilityService;->a:Ljava/lang/String;

    .line 185
    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onDestroy()V

    .line 186
    return-void
.end method

.method public onInterrupt()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 176
    invoke-super {p0, p1}, Landroid/accessibilityservice/AccessibilityService;->onUnbind(Landroid/content/Intent;)Z

    .line 177
    return-void
.end method

.method public onServiceConnected()V
    .locals 3

    .prologue
    .line 116
    invoke-direct {p0}, Lde/gdata/mobilesecurity/services/GdAccessibilityService;->a()V

    .line 118
    const/4 v0, 0x0

    sput-object v0, Lde/gdata/mobilesecurity/services/GdAccessibilityService;->a:Ljava/lang/String;

    .line 120
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 121
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 123
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 125
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 127
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isMMSEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-le v1, v2, :cond_1

    .line 129
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getWaitForAccessibilityService()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAppProtectionActivated(Z)V

    .line 130
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setWaitForAccessibilityService(Z)V

    .line 134
    :cond_1
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/GdAccessibilityService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/services/GdAccessibilityService;->c:Landroid/support/v4/content/LocalBroadcastManager;

    .line 135
    return-void
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 192
    invoke-super {p0, p1}, Landroid/accessibilityservice/AccessibilityService;->onTaskRemoved(Landroid/content/Intent;)V

    .line 193
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 3

    .prologue
    .line 152
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 153
    const/4 v1, 0x0

    sput-object v1, Lde/gdata/mobilesecurity/services/GdAccessibilityService;->a:Ljava/lang/String;

    .line 155
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isMMSEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-le v1, v2, :cond_1

    .line 157
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isAppProtectionActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAppProtectionActivated(Z)V

    .line 159
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setWaitForAccessibilityService(Z)V

    .line 162
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 163
    const-class v1, Lde/gdata/mobilesecurity/activities/applock/EnforceAccessibilityService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 164
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 165
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/services/GdAccessibilityService;->startActivity(Landroid/content/Intent;)V

    .line 169
    :cond_1
    invoke-super {p0, p1}, Landroid/accessibilityservice/AccessibilityService;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
