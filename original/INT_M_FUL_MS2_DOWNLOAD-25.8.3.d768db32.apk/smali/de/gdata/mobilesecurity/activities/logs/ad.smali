.class Lde/gdata/mobilesecurity/activities/logs/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Lde/gdata/mobilesecurity/activities/logs/LogFragment$ScanBroadcastReceiver;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/logs/LogFragment$ScanBroadcastReceiver;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 849
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/logs/ad;->c:Lde/gdata/mobilesecurity/activities/logs/LogFragment$ScanBroadcastReceiver;

    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/logs/ad;->a:Ljava/lang/String;

    iput-object p3, p0, Lde/gdata/mobilesecurity/activities/logs/ad;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const v7, 0x7f0d04c0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 853
    const-string v0, "SCAN_SET_PROGRESS"

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/ad;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 854
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/ad;->c:Lde/gdata/mobilesecurity/activities/logs/LogFragment$ScanBroadcastReceiver;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/logs/LogFragment$ScanBroadcastReceiver;->a:Lde/gdata/mobilesecurity/activities/logs/LogFragment;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/ad;->b:Landroid/content/Intent;

    const-string v2, "value"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->setProgress(I)V

    .line 896
    :cond_0
    :goto_0
    return-void

    .line 855
    :cond_1
    const-string v0, "SCAN_ADVANCE"

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/ad;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 856
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/ad;->c:Lde/gdata/mobilesecurity/activities/logs/LogFragment$ScanBroadcastReceiver;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/logs/LogFragment$ScanBroadcastReceiver;->a:Lde/gdata/mobilesecurity/activities/logs/LogFragment;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/ad;->b:Landroid/content/Intent;

    const-string v2, "value"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->advance(I)V

    goto :goto_0

    .line 857
    :cond_2
    const-string v0, "SCAN_FLIP_INDETERMINATE"

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/ad;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 858
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/ad;->c:Lde/gdata/mobilesecurity/activities/logs/LogFragment$ScanBroadcastReceiver;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/logs/LogFragment$ScanBroadcastReceiver;->a:Lde/gdata/mobilesecurity/activities/logs/LogFragment;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/ad;->b:Landroid/content/Intent;

    const-string v2, "value"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->flipIndeterminate(Z)V

    goto :goto_0

    .line 859
    :cond_3
    const-string v0, "SCAN_RESET"

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/ad;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 860
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/ad;->c:Lde/gdata/mobilesecurity/activities/logs/LogFragment$ScanBroadcastReceiver;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/logs/LogFragment$ScanBroadcastReceiver;->a:Lde/gdata/mobilesecurity/activities/logs/LogFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->reset()V

    goto :goto_0

    .line 861
    :cond_4
    const-string v0, "SCAN_SET_ADVANCE_STEP"

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/ad;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 862
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/ad;->c:Lde/gdata/mobilesecurity/activities/logs/LogFragment$ScanBroadcastReceiver;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/logs/LogFragment$ScanBroadcastReceiver;->a:Lde/gdata/mobilesecurity/activities/logs/LogFragment;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/ad;->b:Landroid/content/Intent;

    const-string v2, "value"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->setAdvanceStep(I)V

    goto :goto_0

    .line 863
    :cond_5
    const-string v0, "SCAN_SET_LIMIT"

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/ad;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 864
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/ad;->c:Lde/gdata/mobilesecurity/activities/logs/LogFragment$ScanBroadcastReceiver;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/logs/LogFragment$ScanBroadcastReceiver;->a:Lde/gdata/mobilesecurity/activities/logs/LogFragment;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/ad;->b:Landroid/content/Intent;

    const-string v2, "value"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->setLimit(I)V

    goto :goto_0

    .line 865
    :cond_6
    const-string v0, "SCAN_SET_UPDATE_STATUS"

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/ad;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 866
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/ad;->c:Lde/gdata/mobilesecurity/activities/logs/LogFragment$ScanBroadcastReceiver;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/logs/LogFragment$ScanBroadcastReceiver;->a:Lde/gdata/mobilesecurity/activities/logs/LogFragment;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/ad;->b:Landroid/content/Intent;

    const-string v2, "value"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->updateStatus(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 867
    :cond_7
    const-string v0, "SCAN_TICK"

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/ad;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 868
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/ad;->c:Lde/gdata/mobilesecurity/activities/logs/LogFragment$ScanBroadcastReceiver;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/logs/LogFragment$ScanBroadcastReceiver;->a:Lde/gdata/mobilesecurity/activities/logs/LogFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->tick()V

    goto/16 :goto_0

    .line 869
    :cond_8
    const-string v0, "SCAN_FINISHED"

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/ad;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 870
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/ad;->c:Lde/gdata/mobilesecurity/activities/logs/LogFragment$ScanBroadcastReceiver;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/logs/LogFragment$ScanBroadcastReceiver;->a:Lde/gdata/mobilesecurity/activities/logs/LogFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->finished()V

    goto/16 :goto_0

    .line 872
    :cond_9
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/ad;->c:Lde/gdata/mobilesecurity/activities/logs/LogFragment$ScanBroadcastReceiver;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/logs/LogFragment$ScanBroadcastReceiver;->a:Lde/gdata/mobilesecurity/activities/logs/LogFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 873
    const-string v0, "SERVICE_IS_RUNNING"

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/logs/ad;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 874
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/ad;->c:Lde/gdata/mobilesecurity/activities/logs/LogFragment$ScanBroadcastReceiver;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/logs/LogFragment$ScanBroadcastReceiver;->a:Lde/gdata/mobilesecurity/activities/logs/LogFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 875
    if-eqz v0, :cond_a

    .line 876
    const v2, 0x7f0b033a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 877
    if-eqz v0, :cond_a

    .line 878
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/logs/ad;->b:Landroid/content/Intent;

    const-string v3, "scantype"

    const v4, 0x7f0d0345

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 881
    :cond_a
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/ad;->c:Lde/gdata/mobilesecurity/activities/logs/LogFragment$ScanBroadcastReceiver;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/logs/LogFragment$ScanBroadcastReceiver;->a:Lde/gdata/mobilesecurity/activities/logs/LogFragment;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/logs/ad;->b:Landroid/content/Intent;

    const-string v3, "value"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->setServiceIsRunning(Z)V

    .line 882
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/ad;->c:Lde/gdata/mobilesecurity/activities/logs/LogFragment$ScanBroadcastReceiver;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/logs/LogFragment$ScanBroadcastReceiver;->a:Lde/gdata/mobilesecurity/activities/logs/LogFragment;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/logs/ad;->b:Landroid/content/Intent;

    const-string v3, "status"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->updateStatus(Ljava/lang/String;)V

    .line 883
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/ad;->c:Lde/gdata/mobilesecurity/activities/logs/LogFragment$ScanBroadcastReceiver;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/logs/LogFragment$ScanBroadcastReceiver;->a:Lde/gdata/mobilesecurity/activities/logs/LogFragment;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/logs/ad;->b:Landroid/content/Intent;

    const-string v3, "progress"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->setProgress(I)V

    .line 884
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/ad;->c:Lde/gdata/mobilesecurity/activities/logs/LogFragment$ScanBroadcastReceiver;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/logs/LogFragment$ScanBroadcastReceiver;->a:Lde/gdata/mobilesecurity/activities/logs/LogFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->a(Lde/gdata/mobilesecurity/activities/logs/LogFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 885
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/ad;->c:Lde/gdata/mobilesecurity/activities/logs/LogFragment$ScanBroadcastReceiver;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/logs/LogFragment$ScanBroadcastReceiver;->a:Lde/gdata/mobilesecurity/activities/logs/LogFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->a(Lde/gdata/mobilesecurity/activities/logs/LogFragment;)Landroid/widget/TextView;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/logs/ad;->b:Landroid/content/Intent;

    const-string v4, "SCAN_STEP"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v7, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 888
    :cond_b
    const-string v0, "SCAN_PROGRESS_STEP"

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/logs/ad;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/ad;->c:Lde/gdata/mobilesecurity/activities/logs/LogFragment$ScanBroadcastReceiver;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/logs/LogFragment$ScanBroadcastReceiver;->a:Lde/gdata/mobilesecurity/activities/logs/LogFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->a(Lde/gdata/mobilesecurity/activities/logs/LogFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 890
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/ad;->c:Lde/gdata/mobilesecurity/activities/logs/LogFragment$ScanBroadcastReceiver;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/logs/LogFragment$ScanBroadcastReceiver;->a:Lde/gdata/mobilesecurity/activities/logs/LogFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->a(Lde/gdata/mobilesecurity/activities/logs/LogFragment;)Landroid/widget/TextView;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/logs/ad;->b:Landroid/content/Intent;

    const-string v4, "SCAN_STEP"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v7, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
