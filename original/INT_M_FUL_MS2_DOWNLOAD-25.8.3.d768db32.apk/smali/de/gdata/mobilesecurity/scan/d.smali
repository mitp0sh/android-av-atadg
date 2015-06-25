.class Lde/gdata/mobilesecurity/scan/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Lde/gdata/mobilesecurity/scan/ScanProgress;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/scan/ScanProgress;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lde/gdata/mobilesecurity/scan/d;->c:Lde/gdata/mobilesecurity/scan/ScanProgress;

    iput-object p2, p0, Lde/gdata/mobilesecurity/scan/d;->a:Ljava/lang/String;

    iput-object p3, p0, Lde/gdata/mobilesecurity/scan/d;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 187
    const-string v0, "SCAN_SET_PROGRESS"

    iget-object v1, p0, Lde/gdata/mobilesecurity/scan/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/d;->c:Lde/gdata/mobilesecurity/scan/ScanProgress;

    iget-object v1, p0, Lde/gdata/mobilesecurity/scan/d;->b:Landroid/content/Intent;

    const-string v2, "value"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/scan/ScanProgress;->setProgress(I)V

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    const-string v0, "SCAN_ADVANCE"

    iget-object v1, p0, Lde/gdata/mobilesecurity/scan/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/d;->c:Lde/gdata/mobilesecurity/scan/ScanProgress;

    iget-object v1, p0, Lde/gdata/mobilesecurity/scan/d;->b:Landroid/content/Intent;

    const-string v2, "value"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/scan/ScanProgress;->advance(I)V

    goto :goto_0

    .line 191
    :cond_2
    const-string v0, "SCAN_FLIP_INDETERMINATE"

    iget-object v1, p0, Lde/gdata/mobilesecurity/scan/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 192
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/d;->c:Lde/gdata/mobilesecurity/scan/ScanProgress;

    iget-object v1, p0, Lde/gdata/mobilesecurity/scan/d;->b:Landroid/content/Intent;

    const-string v2, "value"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/scan/ScanProgress;->flipIndeterminate(Z)V

    goto :goto_0

    .line 193
    :cond_3
    const-string v0, "SCAN_RESET"

    iget-object v1, p0, Lde/gdata/mobilesecurity/scan/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 194
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/d;->c:Lde/gdata/mobilesecurity/scan/ScanProgress;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/scan/ScanProgress;->reset()V

    goto :goto_0

    .line 195
    :cond_4
    const-string v0, "SCAN_SET_ADVANCE_STEP"

    iget-object v1, p0, Lde/gdata/mobilesecurity/scan/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 196
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/d;->c:Lde/gdata/mobilesecurity/scan/ScanProgress;

    iget-object v1, p0, Lde/gdata/mobilesecurity/scan/d;->b:Landroid/content/Intent;

    const-string v2, "value"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/scan/ScanProgress;->setAdvanceStep(I)V

    goto :goto_0

    .line 197
    :cond_5
    const-string v0, "SCAN_SET_LIMIT"

    iget-object v1, p0, Lde/gdata/mobilesecurity/scan/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 198
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/d;->c:Lde/gdata/mobilesecurity/scan/ScanProgress;

    iget-object v1, p0, Lde/gdata/mobilesecurity/scan/d;->b:Landroid/content/Intent;

    const-string v2, "value"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/scan/ScanProgress;->setLimit(I)V

    goto :goto_0

    .line 199
    :cond_6
    const-string v0, "SCAN_SET_UPDATE_STATUS"

    iget-object v1, p0, Lde/gdata/mobilesecurity/scan/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 200
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/d;->c:Lde/gdata/mobilesecurity/scan/ScanProgress;

    iget-object v1, p0, Lde/gdata/mobilesecurity/scan/d;->b:Landroid/content/Intent;

    const-string v2, "value"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/scan/ScanProgress;->updateStatus(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 201
    :cond_7
    const-string v0, "SCAN_TICK"

    iget-object v1, p0, Lde/gdata/mobilesecurity/scan/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 202
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/d;->c:Lde/gdata/mobilesecurity/scan/ScanProgress;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/scan/ScanProgress;->tick()V

    goto/16 :goto_0

    .line 203
    :cond_8
    const-string v0, "SCAN_FINISHED"

    iget-object v1, p0, Lde/gdata/mobilesecurity/scan/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/d;->c:Lde/gdata/mobilesecurity/scan/ScanProgress;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/scan/ScanProgress;->finished()V

    goto/16 :goto_0
.end method
