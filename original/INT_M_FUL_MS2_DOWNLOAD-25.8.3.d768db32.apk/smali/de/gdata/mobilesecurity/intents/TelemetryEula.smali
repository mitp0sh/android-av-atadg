.class public Lde/gdata/mobilesecurity/intents/TelemetryEula;
.super Lde/gdata/mobilesecurity/intents/GdActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lde/gdata/mobilesecurity/intents/GdActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 105
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/TelemetryEula;->finish()V

    .line 106
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 35
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/TelemetryEula;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 37
    const v0, 0x7f03009c

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/TelemetryEula;->setContentView(I)V

    .line 39
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/TelemetryEula;->showDialog(I)V

    .line 40
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 48
    packed-switch p1, :pswitch_data_0

    .line 88
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 50
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d04b2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0249

    new-instance v2, Lde/gdata/mobilesecurity/intents/cd;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/intents/cd;-><init>(Lde/gdata/mobilesecurity/intents/TelemetryEula;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d023c

    new-instance v2, Lde/gdata/mobilesecurity/intents/cc;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/intents/cc;-><init>(Lde/gdata/mobilesecurity/intents/TelemetryEula;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lde/gdata/mobilesecurity/intents/cb;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/intents/cb;-><init>(Lde/gdata/mobilesecurity/intents/TelemetryEula;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 72
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/TelemetryEula;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyUtil;->convertStreamToSB(Ljava/io/InputStream;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .line 75
    new-instance v2, Landroid/widget/TextView;

    new-instance v3, Landroid/view/ContextThemeWrapper;

    const v4, 0x7f0e0008

    invoke-direct {v3, p0, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 77
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 79
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 80
    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 81
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 83
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 48
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Lde/gdata/mobilesecurity/intents/GdActivity;->onResume()V

    .line 95
    invoke-static {p0}, Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;->isTelemetryUndefined(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/TelemetryEula;->finish()V

    .line 96
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 100
    invoke-super {p0}, Lde/gdata/mobilesecurity/intents/GdActivity;->onStop()V

    .line 101
    return-void
.end method
