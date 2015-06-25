.class Lde/gdata/mobilesecurity/activities/panicbutton/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lde/gdata/mobilesecurity/activities/panicbutton/PanicButtonProviderSmall;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/panicbutton/PanicButtonProviderSmall;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/q;->b:Lde/gdata/mobilesecurity/activities/panicbutton/PanicButtonProviderSmall;

    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/panicbutton/q;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 96
    const/4 v0, 0x1

    sput-boolean v0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;->WIDGET_THREAD_IS_RUNNING:Z

    .line 98
    :try_start_0
    sget v0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;->DURATION:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    sget-boolean v0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;->IS_STOPPED:Z

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/q;->b:Lde/gdata/mobilesecurity/activities/panicbutton/PanicButtonProviderSmall;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/q;->a:Landroid/content/Context;

    sget v2, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;->WIDGET_ID:I

    invoke-static {v0, v1, v2}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicButtonProviderSmall;->a(Lde/gdata/mobilesecurity/activities/panicbutton/PanicButtonProviderSmall;Landroid/content/Context;I)V

    .line 104
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/q;->a:Landroid/content/Context;

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->startVibrate(Landroid/content/Context;)V

    .line 106
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;->WIDGET_THREAD_IS_RUNNING:Z

    .line 107
    return-void

    .line 99
    :catch_0
    move-exception v0

    goto :goto_0
.end method
