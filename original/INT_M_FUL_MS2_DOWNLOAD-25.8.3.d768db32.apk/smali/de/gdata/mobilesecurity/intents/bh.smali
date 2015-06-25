.class final Lde/gdata/mobilesecurity/intents/bh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V
    .locals 0

    .prologue
    .line 699
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/bh;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 702
    move-object v0, p2

    check-cast v0, Landroid/widget/CheckedTextView;

    move-object v1, p2

    check-cast v1, Landroid/widget/CheckedTextView;

    invoke-virtual {v1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 704
    packed-switch p3, :pswitch_data_0

    .line 718
    :goto_1
    return-void

    :cond_0
    move v1, v3

    .line 702
    goto :goto_0

    .line 706
    :pswitch_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/bh;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/bh;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isBssidAnalysis()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setBssidAnalysis(Ljava/lang/Boolean;)V

    .line 707
    check-cast p2, Landroid/widget/CheckedTextView;

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/bh;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isBssidAnalysis()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_1

    :cond_1
    move v2, v3

    .line 706
    goto :goto_2

    .line 710
    :pswitch_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/bh;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/bh;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isContinuousMode()Z

    move-result v1

    if-nez v1, :cond_2

    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setContinuousMode(Ljava/lang/Boolean;)V

    .line 711
    check-cast p2, Landroid/widget/CheckedTextView;

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/bh;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isContinuousMode()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_1

    :cond_2
    move v2, v3

    .line 710
    goto :goto_3

    .line 714
    :pswitch_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/bh;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/bh;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->doAutoDisconnect()Z

    move-result v1

    if-nez v1, :cond_3

    :goto_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAutoDisconnect(Ljava/lang/Boolean;)V

    .line 715
    check-cast p2, Landroid/widget/CheckedTextView;

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/bh;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->doAutoDisconnect()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_1

    :cond_3
    move v2, v3

    .line 714
    goto :goto_4

    .line 704
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
