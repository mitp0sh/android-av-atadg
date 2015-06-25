.class public Lde/gdata/mobilesecurity/activities/browser/BrowserPreferencesFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# static fields
.field public static final STARTUP_BLANK:I = 0x0

.field public static final STARTUP_DEFAULT:I = 0x1

.field public static final STARTUP_SPECIFIC:I = 0x2


# instance fields
.field a:Landroid/app/Activity;

.field b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

.field c:Landroid/widget/RadioButton;

.field d:Landroid/widget/RadioButton;

.field e:Landroid/widget/RadioButton;

.field f:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/browser/BrowserPreferencesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserPreferencesFragment;->a:Landroid/app/Activity;

    .line 41
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserPreferencesFragment;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserPreferencesFragment;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 42
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 46
    const v0, 0x7f03003b

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 48
    const v0, 0x7f0b0148

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserPreferencesFragment;->c:Landroid/widget/RadioButton;

    .line 49
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserPreferencesFragment;->c:Landroid/widget/RadioButton;

    new-instance v2, Lde/gdata/mobilesecurity/activities/browser/k;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/browser/k;-><init>(Lde/gdata/mobilesecurity/activities/browser/BrowserPreferencesFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 58
    const v0, 0x7f0b0149

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserPreferencesFragment;->d:Landroid/widget/RadioButton;

    .line 60
    const v0, 0x7f0d01a0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/browser/BrowserPreferencesFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    const v3, 0x7f0d019e

    invoke-virtual {p0, v3}, Lde/gdata/mobilesecurity/activities/browser/BrowserPreferencesFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 62
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserPreferencesFragment;->d:Landroid/widget/RadioButton;

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserPreferencesFragment;->d:Landroid/widget/RadioButton;

    new-instance v2, Lde/gdata/mobilesecurity/activities/browser/l;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/browser/l;-><init>(Lde/gdata/mobilesecurity/activities/browser/BrowserPreferencesFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 73
    const v0, 0x7f0b014a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserPreferencesFragment;->e:Landroid/widget/RadioButton;

    .line 74
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserPreferencesFragment;->e:Landroid/widget/RadioButton;

    new-instance v2, Lde/gdata/mobilesecurity/activities/browser/m;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/browser/m;-><init>(Lde/gdata/mobilesecurity/activities/browser/BrowserPreferencesFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 84
    const v0, 0x7f0b014b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserPreferencesFragment;->f:Landroid/widget/EditText;

    .line 85
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserPreferencesFragment;->f:Landroid/widget/EditText;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserPreferencesFragment;->e:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 86
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserPreferencesFragment;->f:Landroid/widget/EditText;

    new-instance v2, Lde/gdata/mobilesecurity/activities/browser/n;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/browser/n;-><init>(Lde/gdata/mobilesecurity/activities/browser/BrowserPreferencesFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 97
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserPreferencesFragment;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getBrowserStartupPage()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 109
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserPreferencesFragment;->c:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 112
    :goto_0
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserPreferencesFragment;->a:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 113
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/browser/BrowserPreferencesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getApplicationFont()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lde/gdata/mobilesecurity/util/TypeFaces;->getTypeFace(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 114
    invoke-static {v1, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    .line 116
    return-object v1

    .line 99
    :pswitch_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserPreferencesFragment;->c:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 102
    :pswitch_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserPreferencesFragment;->d:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 105
    :pswitch_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserPreferencesFragment;->e:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 106
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserPreferencesFragment;->f:Landroid/widget/EditText;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserPreferencesFragment;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getBrowserSpecificPage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 123
    const-string v0, ""

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserPreferencesFragment;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserPreferencesFragment;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserPreferencesFragment;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setBrowserSpecificPage(Ljava/lang/String;)V

    .line 126
    :cond_0
    return-void
.end method
