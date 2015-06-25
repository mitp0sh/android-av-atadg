.class public Lde/gdata/mobilesecurity/scan/ScanProgress;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

# interfaces
.implements Lde/gdata/mobilesecurity/scan/NotifyProgress;


# instance fields
.field final a:Landroid/os/Handler;

.field private final b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:Landroid/app/ProgressDialog;

.field private f:Z

.field private g:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 94
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 23
    const-string v0, "string_msg"

    iput-object v0, p0, Lde/gdata/mobilesecurity/scan/ScanProgress;->b:Ljava/lang/String;

    .line 24
    const/4 v0, 0x5

    iput v0, p0, Lde/gdata/mobilesecurity/scan/ScanProgress;->c:I

    .line 27
    iput-boolean v2, p0, Lde/gdata/mobilesecurity/scan/ScanProgress;->f:Z

    .line 47
    new-instance v0, Lde/gdata/mobilesecurity/scan/b;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/scan/b;-><init>(Lde/gdata/mobilesecurity/scan/ScanProgress;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/scan/ScanProgress;->a:Landroid/os/Handler;

    .line 95
    iget v0, p0, Lde/gdata/mobilesecurity/scan/ScanProgress;->c:I

    div-int v0, p2, v0

    iput v0, p0, Lde/gdata/mobilesecurity/scan/ScanProgress;->d:I

    .line 96
    iput-object p1, p0, Lde/gdata/mobilesecurity/scan/ScanProgress;->g:Landroid/app/Activity;

    .line 99
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/scan/ScanProgress;->e:Landroid/app/ProgressDialog;

    .line 100
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/ScanProgress;->e:Landroid/app/ProgressDialog;

    const v1, 0x108004f

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIcon(I)V

    .line 101
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/ScanProgress;->e:Landroid/app/ProgressDialog;

    const v1, 0x7f0d001d

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 102
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/ScanProgress;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 103
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/ScanProgress;->e:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 104
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/ScanProgress;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 105
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/ScanProgress;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 106
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/ScanProgress;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 107
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/ScanProgress;->e:Landroid/app/ProgressDialog;

    const/4 v1, -0x1

    new-instance v2, Lde/gdata/mobilesecurity/scan/c;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/scan/c;-><init>(Lde/gdata/mobilesecurity/scan/ScanProgress;)V

    invoke-virtual {v0, v1, p3, v2}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 115
    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/scan/ScanProgress;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/ScanProgress;->e:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/scan/ScanProgress;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/ScanProgress;->g:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public advance(I)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/ScanProgress;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    .line 131
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/ScanProgress;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 41
    return-void
.end method

.method public finished()V
    .locals 0

    .prologue
    .line 156
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/scan/ScanProgress;->dismiss()V

    .line 157
    return-void
.end method

.method public flipIndeterminate(Z)V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/ScanProgress;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 135
    return-void
.end method

.method public hideProgressLabel()V
    .locals 2

    .prologue
    .line 58
    :try_start_0
    const-class v0, Landroid/app/ProgressDialog;

    const-string v1, "mProgressNumber"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 59
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 60
    iget-object v1, p0, Lde/gdata/mobilesecurity/scan/ScanProgress;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 61
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    .line 72
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 65
    :catch_1
    move-exception v0

    .line 66
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 67
    :catch_2
    move-exception v0

    .line 68
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 69
    :catch_3
    move-exception v0

    .line 70
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 178
    .line 179
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    new-instance v1, Lde/gdata/mobilesecurity/scan/d;

    invoke-direct {v1, p0, v0, p2}, Lde/gdata/mobilesecurity/scan/d;-><init>(Lde/gdata/mobilesecurity/scan/ScanProgress;Ljava/lang/String;Landroid/content/Intent;)V

    .line 208
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v0, v2, :cond_2

    .line 209
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/ScanProgress;->g:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 211
    :cond_2
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/ScanProgress;->e:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 119
    return-void
.end method

.method public setAdvanceStep(I)V
    .locals 0

    .prologue
    .line 126
    iput p1, p0, Lde/gdata/mobilesecurity/scan/ScanProgress;->d:I

    .line 127
    return-void
.end method

.method public setFastScan(Z)V
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/scan/ScanProgress;->f:Z

    .line 33
    return-void
.end method

.method public setInitialScanMessage(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/ScanProgress;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 45
    return-void
.end method

.method public setLimit(I)V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/ScanProgress;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 165
    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/ScanProgress;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 123
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/ScanProgress;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 37
    return-void
.end method

.method public showProgressLabel()V
    .locals 2

    .prologue
    .line 78
    :try_start_0
    const-class v0, Landroid/app/ProgressDialog;

    const-string v1, "mProgressNumber"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 79
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 80
    iget-object v1, p0, Lde/gdata/mobilesecurity/scan/ScanProgress;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 81
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    .line 92
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 85
    :catch_1
    move-exception v0

    .line 86
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 87
    :catch_2
    move-exception v0

    .line 88
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 89
    :catch_3
    move-exception v0

    .line 90
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public tick()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 139
    move v0, v1

    :goto_0
    iget v2, p0, Lde/gdata/mobilesecurity/scan/ScanProgress;->d:I

    if-gt v0, v2, :cond_1

    .line 140
    iget-object v2, p0, Lde/gdata/mobilesecurity/scan/ScanProgress;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v1}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    .line 141
    iget-boolean v2, p0, Lde/gdata/mobilesecurity/scan/ScanProgress;->f:Z

    if-nez v2, :cond_0

    .line 144
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    const-wide/16 v2, 0x14

    :try_start_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 146
    monitor-exit p0

    .line 139
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 148
    :catch_0
    move-exception v2

    goto :goto_1

    .line 153
    :cond_1
    return-void
.end method

.method public updateStatus(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/ScanProgress;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 169
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 170
    const-string v2, "string_msg"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 172
    iget-object v1, p0, Lde/gdata/mobilesecurity/scan/ScanProgress;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 173
    return-void
.end method
