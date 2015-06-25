.class Lde/gdata/mobilesecurity/activities/panicbutton/af;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;


# direct methods
.method private constructor <init>(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/af;->a:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;Lde/gdata/mobilesecurity/activities/panicbutton/ad;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/activities/panicbutton/af;-><init>(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 78
    move v0, v1

    :goto_0
    sget v2, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;->DURATION:I

    if-ge v0, v2, :cond_0

    sget-boolean v2, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;->IS_STOPPED:Z

    if-nez v2, :cond_0

    .line 79
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/panicbutton/af;->a:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;

    iget-object v2, v2, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;->a:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 81
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_1
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/panicbutton/af;->a:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;

    invoke-static {v2}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;->b(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;)I

    .line 87
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/panicbutton/af;->a:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;

    iget-object v2, v2, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;->a:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :catch_0
    move-exception v2

    .line 84
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    goto :goto_1

    .line 89
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method protected varargs a([Ljava/lang/Void;)V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 74
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/panicbutton/af;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 74
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/panicbutton/af;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 74
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/panicbutton/af;->a([Ljava/lang/Void;)V

    return-void
.end method
