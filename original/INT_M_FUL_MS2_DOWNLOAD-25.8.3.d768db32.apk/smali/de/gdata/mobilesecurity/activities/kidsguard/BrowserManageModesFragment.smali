.class public Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# static fields
.field public static final BLACKLIST:I = 0x2

.field public static final GENERAL:I = 0x0

.field public static final WHITELIST:I = 0x1


# instance fields
.field a:Landroid/app/Activity;

.field b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

.field c:Landroid/widget/CheckBox;

.field d:Landroid/widget/CheckBox;

.field e:Landroid/widget/RadioGroup;

.field f:Landroid/widget/RadioButton;

.field g:Landroid/widget/RadioButton;

.field h:Landroid/widget/TextView;

.field i:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;->a:Landroid/app/Activity;

    .line 53
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 54
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    const/high16 v7, -0x10000

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 58
    const v0, 0x7f03005e

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 60
    const v0, 0x7f0b021c

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;->c:Landroid/widget/CheckBox;

    .line 61
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;->c:Landroid/widget/CheckBox;

    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardBrowserFragFinnEnabled()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 62
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;->c:Landroid/widget/CheckBox;

    new-instance v4, Lde/gdata/mobilesecurity/activities/kidsguard/a;

    invoke-direct {v4, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/a;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;)V

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 69
    const v0, 0x7f0b021d

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;->d:Landroid/widget/CheckBox;

    .line 70
    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;->d:Landroid/widget/CheckBox;

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getKidsguardBrowserMode()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 71
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;->d:Landroid/widget/CheckBox;

    new-instance v4, Lde/gdata/mobilesecurity/activities/kidsguard/b;

    invoke-direct {v4, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/b;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;)V

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 85
    const v0, 0x7f0b021e

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;->e:Landroid/widget/RadioGroup;

    .line 87
    const v0, 0x7f0b021f

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;->f:Landroid/widget/RadioButton;

    .line 88
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;->f:Landroid/widget/RadioButton;

    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;->d:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 89
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;->f:Landroid/widget/RadioButton;

    new-instance v4, Lde/gdata/mobilesecurity/activities/kidsguard/c;

    invoke-direct {v4, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/c;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;)V

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    const v0, 0x7f0b0220

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;->g:Landroid/widget/RadioButton;

    .line 102
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;->g:Landroid/widget/RadioButton;

    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;->d:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 103
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;->g:Landroid/widget/RadioButton;

    new-instance v4, Lde/gdata/mobilesecurity/activities/kidsguard/d;

    invoke-direct {v4, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/d;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;)V

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;->f:Landroid/widget/RadioButton;

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getKidsguardBrowserMode()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 116
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;->g:Landroid/widget/RadioButton;

    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getKidsguardBrowserMode()I

    move-result v4

    if-ne v4, v6, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 118
    const v0, 0x7f0b0224

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;->h:Landroid/widget/TextView;

    .line 119
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;->h:Landroid/widget/TextView;

    new-instance v1, Lde/gdata/mobilesecurity/activities/kidsguard/e;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/e;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d02c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 130
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 131
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v4, v2, v5, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 132
    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v4, v2, v5, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 133
    new-instance v4, Landroid/text/style/UnderlineSpan;

    invoke-direct {v4}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v4, v2, v0, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 134
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    const v0, 0x7f0b0225

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;->i:Landroid/widget/TextView;

    .line 137
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;->i:Landroid/widget/TextView;

    new-instance v1, Lde/gdata/mobilesecurity/activities/kidsguard/f;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/f;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d02c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 148
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 149
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v4, v2, v5, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 150
    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v4, v2, v5, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 151
    new-instance v4, Landroid/text/style/UnderlineSpan;

    invoke-direct {v4}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v4, v2, v0, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 152
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 155
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getApplicationFont()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lde/gdata/mobilesecurity/util/TypeFaces;->getTypeFace(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 156
    invoke-static {v3, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    .line 158
    return-object v3

    :cond_0
    move v0, v2

    .line 70
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 115
    goto/16 :goto_1

    :cond_2
    move v1, v2

    .line 116
    goto/16 :goto_2
.end method
