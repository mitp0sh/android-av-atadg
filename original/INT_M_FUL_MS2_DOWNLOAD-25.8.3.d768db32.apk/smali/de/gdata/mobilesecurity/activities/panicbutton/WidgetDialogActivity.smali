.class public Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"


# static fields
.field public static final A_SECOND_IN_MS:J = 0x3e8L

.field public static DURATION:I

.field public static IS_STOPPED:Z

.field public static WIDGET_ID:I

.field public static WIDGET_THREAD_IS_RUNNING:Z


# instance fields
.field a:Landroid/os/Handler;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/TextView;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    sput-boolean v1, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;->IS_STOPPED:Z

    .line 20
    const/4 v0, 0x5

    sput v0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;->DURATION:I

    .line 21
    sput v1, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;->WIDGET_ID:I

    .line 22
    sput-boolean v1, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;->WIDGET_THREAD_IS_RUNNING:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;->d:I

    .line 105
    new-instance v0, Lde/gdata/mobilesecurity/activities/panicbutton/ae;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/activities/panicbutton/ae;-><init>(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;->a:Landroid/os/Handler;

    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 58
    const v0, 0x7f0b0235

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;->b:Landroid/widget/Button;

    .line 59
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;->b:Landroid/widget/Button;

    new-instance v1, Lde/gdata/mobilesecurity/activities/panicbutton/ad;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/panicbutton/ad;-><init>(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const v0, 0x7f0b0358

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;->c:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;->DURATION:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;->b()V

    return-void
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;)I
    .locals 2

    .prologue
    .line 16
    iget v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;->d:I

    return v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    sput-boolean v0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;->IS_STOPPED:Z

    .line 71
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;->finish()V

    .line 72
    return-void
.end method

.method static synthetic c(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;)I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;->d:I

    return v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 31
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f0d03e5

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 33
    const v0, 0x7f0300a1

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;->setContentView(I)V

    .line 35
    sget-boolean v0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;->WIDGET_THREAD_IS_RUNNING:Z

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;->finish()V

    .line 55
    :goto_0
    return-void

    .line 38
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "widgetId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;->WIDGET_ID:I

    .line 39
    sput-boolean v4, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;->IS_STOPPED:Z

    .line 40
    iput v4, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;->d:I

    .line 42
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lde/gdata/mobilesecurity/activities/panicbutton/PanicButtonProviderSmall;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "de.gdata.mobilesecurity.activities.panicbutton_red.CLICKED_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;->WIDGET_ID:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 45
    new-instance v2, Lde/gdata/mobilesecurity/activities/panicbutton/af;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lde/gdata/mobilesecurity/activities/panicbutton/af;-><init>(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;Lde/gdata/mobilesecurity/activities/panicbutton/ad;)V

    new-array v3, v4, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/panicbutton/af;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 47
    :try_start_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_1
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;->a()V

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 50
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Sending contentIntent failed: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 119
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 120
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;->finish()V

    .line 121
    return-void
.end method
