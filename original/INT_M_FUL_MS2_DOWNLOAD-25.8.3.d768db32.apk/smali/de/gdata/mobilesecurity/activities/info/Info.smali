.class public Lde/gdata/mobilesecurity/activities/info/Info;
.super Lde/gdata/mobilesecurity/intents/GdActivity;
.source "SourceFile"


# static fields
.field public static final EXTRA_SPLASH_TIME_SEC:Ljava/lang/String; = "SPLASH_TIME"

.field public static final OEM_FILE_NAME_INFO:Ljava/lang/String; = "info_oem.png"

.field public static final OEM_FILE_NAME_INFO_LAND:Ljava/lang/String; = "info_quer_oem.png"


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lde/gdata/mobilesecurity/intents/GdActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    const v4, 0x7f0b01ee

    const v3, 0x7f0b01ed

    const/16 v2, 0x8

    .line 71
    const v0, 0x7f030056

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/info/Info;->setContentView(I)V

    .line 73
    invoke-virtual {p0, v3}, Lde/gdata/mobilesecurity/activities/info/Info;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/info/Info;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    const v0, 0x7f0b01ea

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/info/Info;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "info_oem.png"

    invoke-static {p0, v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->replaceOemGraphic(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)Z

    .line 76
    const v0, 0x7f0b01ef

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/info/Info;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "info_quer_oem.png"

    invoke-static {p0, v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->replaceOemGraphic(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)Z

    .line 78
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 79
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isOrangeOemVersion()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 80
    invoke-virtual {p0, v4}, Lde/gdata/mobilesecurity/activities/info/Info;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_0

    .line 82
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 84
    :cond_0
    const v0, 0x7f0b01eb

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/info/Info;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 88
    :cond_1
    const v0, 0x7f0b01ec

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/info/Info;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_2

    .line 90
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 92
    :cond_2
    invoke-virtual {p0, v3}, Lde/gdata/mobilesecurity/activities/info/Info;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_3

    .line 94
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 102
    :cond_3
    :goto_0
    return-void

    .line 97
    :cond_4
    invoke-virtual {p0, v4}, Lde/gdata/mobilesecurity/activities/info/Info;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_3

    .line 99
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 109
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 111
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/info/Info;->a()V

    .line 112
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 30
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/info/Info;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 34
    invoke-static {p0}, Lde/gdata/mobilesecurity/util/MyPackageManagerUtil;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/MyPackageManagerUtil;

    move-result-object v1

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MyPackageManagerUtil;->getVersionName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lde/gdata/mobilesecurity/activities/info/Info;->a:Ljava/lang/String;

    .line 35
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/info/Info;->a:Ljava/lang/String;

    const-string v2, "MSAPGM_"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lde/gdata/mobilesecurity/activities/info/Info;->a:Ljava/lang/String;

    .line 37
    invoke-static {p0}, Lde/gdata/mobilesecurity/util/MyUtil;->isDebugMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/info/Info;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lde/gdata/mobilesecurity/util/MyPackageManagerUtil;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/MyPackageManagerUtil;

    move-result-object v2

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MyPackageManagerUtil;->getVersion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lde/gdata/mobilesecurity/activities/info/Info;->a:Ljava/lang/String;

    .line 41
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/info/Info;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 42
    if-eqz v1, :cond_2

    const-string v2, "SPLASH_TIME"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 44
    :goto_0
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/info/Info;->a()V

    .line 46
    if-eqz v0, :cond_1

    .line 47
    const-string v0, "SPLASH_TIME"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 48
    new-instance v1, Lde/gdata/mobilesecurity/activities/info/a;

    invoke-direct {v1, p0, v0}, Lde/gdata/mobilesecurity/activities/info/a;-><init>(Lde/gdata/mobilesecurity/activities/info/Info;I)V

    .line 63
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 65
    :cond_1
    return-void

    .line 42
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
