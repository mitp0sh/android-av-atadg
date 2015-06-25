.class public Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;
.super Lde/gdata/mobilesecurity/intents/GdNoTitleBarActivity;
.source "SourceFile"


# static fields
.field public static final SELECTED_PAGE:Ljava/lang/String; = "SELECTED_PAGE"


# instance fields
.field private b:Landroid/support/v4/view/ViewPager;

.field private c:Lde/gdata/mobilesecurity/activities/wizard/c;

.field private d:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lde/gdata/mobilesecurity/intents/GdNoTitleBarActivity;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->e:I

    .line 212
    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->d:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    return-object v0
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;)Lde/gdata/mobilesecurity/activities/wizard/c;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->c:Lde/gdata/mobilesecurity/activities/wizard/c;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 201
    invoke-super {p0, p1, p2, p3}, Lde/gdata/mobilesecurity/intents/GdNoTitleBarActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 202
    if-nez p1, :cond_0

    .line 203
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->pressNext()V

    .line 207
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_1

    .line 167
    invoke-super {p0}, Lde/gdata/mobilesecurity/intents/GdNoTitleBarActivity;->onBackPressed()V

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 169
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->d:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isEulaAccepted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->d:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->wasWizardAuthSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    :cond_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->b:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 173
    :cond_3
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->b:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/16 v1, 0x400

    .line 51
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdNoTitleBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 57
    const v0, 0x7f030025

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->setContentView(I)V

    .line 59
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->d:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 62
    const v0, 0x7f0b00d4

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->b:Landroid/support/v4/view/ViewPager;

    .line 63
    new-instance v0, Lde/gdata/mobilesecurity/activities/wizard/c;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lde/gdata/mobilesecurity/activities/wizard/c;-><init>(Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->c:Lde/gdata/mobilesecurity/activities/wizard/c;

    .line 64
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->b:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->c:Lde/gdata/mobilesecurity/activities/wizard/c;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 65
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->b:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lde/gdata/mobilesecurity/activities/wizard/a;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/wizard/a;-><init>(Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 72
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->b:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lde/gdata/mobilesecurity/activities/wizard/b;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/wizard/b;-><init>(Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 133
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_0

    const-string v1, "SELECTED_PAGE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->b:Landroid/support/v4/view/ViewPager;

    const-string v2, "SELECTED_PAGE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 138
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "lastPagePosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->b:Landroid/support/v4/view/ViewPager;

    const-string v1, "lastPagePosition"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 141
    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 153
    invoke-super {p0}, Lde/gdata/mobilesecurity/intents/GdNoTitleBarActivity;->onPause()V

    .line 154
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->d:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->wasWizardShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->finish()V

    .line 157
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 145
    invoke-super {p0}, Lde/gdata/mobilesecurity/intents/GdNoTitleBarActivity;->onResume()V

    .line 146
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->d:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->wasWizardShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->finish()V

    .line 149
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 161
    const-string v0, "lastPagePosition"

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 162
    return-void
.end method

.method public pressExit()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->d:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isEulaAccepted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->d:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setWizardShown(Z)V

    .line 196
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->finish()V

    .line 197
    return-void
.end method

.method public pressNext()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->d:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isOrangeOemVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-gez v0, :cond_0

    .line 180
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->b:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 191
    :goto_0
    return-void

    .line 182
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->pressExit()V

    goto :goto_0

    .line 185
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 186
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->b:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 188
    :cond_2
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;->pressExit()V

    goto :goto_0
.end method
