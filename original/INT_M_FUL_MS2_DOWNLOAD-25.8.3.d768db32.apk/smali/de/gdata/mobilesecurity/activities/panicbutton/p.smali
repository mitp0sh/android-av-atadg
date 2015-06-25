.class Lde/gdata/mobilesecurity/activities/panicbutton/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I

.field final synthetic c:Lde/gdata/mobilesecurity/activities/panicbutton/PanicButtonProviderBig;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/panicbutton/PanicButtonProviderBig;Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/p;->c:Lde/gdata/mobilesecurity/activities/panicbutton/PanicButtonProviderBig;

    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/panicbutton/p;->a:Landroid/content/Context;

    iput p3, p0, Lde/gdata/mobilesecurity/activities/panicbutton/p;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 95
    const/4 v0, 0x1

    sput-boolean v0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;->WIDGET_THREAD_IS_RUNNING:Z

    .line 97
    :try_start_0
    sget v0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;->DURATION:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    sget-boolean v0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;->IS_STOPPED:Z

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/p;->c:Lde/gdata/mobilesecurity/activities/panicbutton/PanicButtonProviderBig;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/p;->a:Landroid/content/Context;

    iget v2, p0, Lde/gdata/mobilesecurity/activities/panicbutton/p;->b:I

    invoke-static {v0, v1, v2}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicButtonProviderBig;->a(Lde/gdata/mobilesecurity/activities/panicbutton/PanicButtonProviderBig;Landroid/content/Context;I)V

    .line 103
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/p;->a:Landroid/content/Context;

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->startVibrate(Landroid/content/Context;)V

    .line 105
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;->WIDGET_THREAD_IS_RUNNING:Z

    .line 106
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
