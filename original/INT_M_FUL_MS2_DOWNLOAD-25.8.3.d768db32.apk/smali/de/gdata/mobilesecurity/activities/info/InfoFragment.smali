.class public Lde/gdata/mobilesecurity/activities/info/InfoFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    const v7, 0x7f0b01ee

    const v6, 0x7f0b01ed

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 20
    const v0, 0x7f030056

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 23
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/info/InfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyPackageManagerUtil;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/MyPackageManagerUtil;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MyPackageManagerUtil;->getVersionName()Ljava/lang/String;

    move-result-object v0

    .line 24
    const-string v1, "MSAPGM_"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/info/InfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyUtil;->isDebugMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/info/InfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyPackageManagerUtil;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/MyPackageManagerUtil;

    move-result-object v1

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MyPackageManagerUtil;->getVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 29
    :goto_0
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 30
    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/info/InfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v0, 0x7f0b01ea

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v3, "info_oem.png"

    invoke-static {v1, v0, v3}, Lde/gdata/mobilesecurity/util/MyUtil;->replaceOemGraphic(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)Z

    .line 35
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/info/InfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v0, 0x7f0b01ef

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v3, "info_quer_oem.png"

    invoke-static {v1, v0, v3}, Lde/gdata/mobilesecurity/util/MyUtil;->replaceOemGraphic(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)Z

    .line 38
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/info/InfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isOrangeOemVersion()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 40
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 44
    :cond_1
    const v0, 0x7f0b01eb

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 48
    :cond_2
    const v0, 0x7f0b01ec

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_3

    .line 50
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 52
    :cond_3
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_4

    .line 54
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 62
    :cond_4
    :goto_1
    return-object v2

    .line 57
    :cond_5
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_4

    .line 59
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_6
    move-object v1, v0

    goto :goto_0
.end method
