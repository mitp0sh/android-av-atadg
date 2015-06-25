.class public Lde/gdata/mobilesecurity/intents/UpgradeOffer;
.super Lde/gdata/mobilesecurity/intents/GdActivity;
.source "SourceFile"


# instance fields
.field private a:Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lde/gdata/mobilesecurity/intents/GdActivity;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/UpgradeOffer;->a:Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;

    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/intents/UpgradeOffer;)Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/UpgradeOffer;->a:Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 36
    const v0, 0x7f03009d

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/UpgradeOffer;->setContentView(I)V

    .line 38
    const v0, 0x7f0b0352

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/UpgradeOffer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/UpgradeOffer;->a:Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    const v0, 0x7f0b0353

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/UpgradeOffer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 41
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/UpgradeOffer;->a:Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->getOrderButton()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 42
    new-instance v1, Lde/gdata/mobilesecurity/intents/ce;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/intents/ce;-><init>(Lde/gdata/mobilesecurity/intents/UpgradeOffer;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    invoke-static {p0}, Lde/gdata/mobilesecurity/util/MyUtil;->restrictDialogLayoutWidth(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const v0, 0x7f0b0351

    const v1, 0x7f0a005d

    invoke-static {p0, v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->setDialogLayoutWidth(Landroid/app/Activity;II)V

    .line 52
    :cond_0
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 61
    invoke-direct {p0}, Lde/gdata/mobilesecurity/intents/UpgradeOffer;->a()V

    .line 62
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 24
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/UpgradeOffer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 27
    const-string v1, "red"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/UpgradeOffer;->a:Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;

    .line 29
    invoke-direct {p0}, Lde/gdata/mobilesecurity/intents/UpgradeOffer;->a()V

    .line 30
    return-void
.end method
