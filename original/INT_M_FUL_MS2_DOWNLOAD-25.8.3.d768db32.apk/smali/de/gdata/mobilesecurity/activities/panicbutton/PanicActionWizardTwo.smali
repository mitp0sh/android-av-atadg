.class public Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"


# static fields
.field public static final SMS_CHARACTERS:I = 0xa0


# instance fields
.field private a:Landroid/widget/ImageButton;

.field private b:Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/CheckBox;

.field private h:Landroid/widget/CheckBox;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->h:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private a()V
    .locals 7

    .prologue
    const v2, 0x7f0b02e3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 47
    const v0, 0x7f030082

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->setContentView(I)V

    .line 48
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 49
    const-string v1, "panicAction"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->b:Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;

    .line 51
    const v0, 0x7f0b02fd

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->a:Landroid/widget/ImageButton;

    .line 52
    const v0, 0x7f0b02fb

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 53
    const v1, 0x7f0b02e7

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->e:Landroid/widget/EditText;

    .line 54
    const v1, 0x7f0b02ff

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->l:Landroid/widget/TextView;

    .line 55
    const v1, 0x7f0b02fe

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->f:Landroid/widget/EditText;

    .line 56
    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->c:Landroid/widget/TextView;

    .line 58
    const v1, 0x7f0b0300

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->g:Landroid/widget/CheckBox;

    .line 59
    const v1, 0x7f0b0301

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->h:Landroid/widget/CheckBox;

    .line 61
    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->c:Landroid/widget/TextView;

    .line 63
    const v1, 0x7f0b02f0

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->d:Landroid/widget/TextView;

    .line 65
    const v1, 0x7f0b0230

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->i:Landroid/view/View;

    .line 66
    const v1, 0x7f0b02f9

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->j:Landroid/view/View;

    .line 67
    const v1, 0x7f0b0232

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->k:Landroid/view/View;

    .line 69
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->b:Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->getPositionForActionProfile(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    .line 71
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->b:Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->getPositionForActionProfile(Ljava/lang/String;)I

    move-result v3

    aget-object v2, v2, v3

    .line 74
    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->h:Landroid/widget/CheckBox;

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 76
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->b:Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->h:Landroid/widget/CheckBox;

    new-instance v3, Lde/gdata/mobilesecurity/activities/panicbutton/j;

    invoke-direct {v3, p0}, Lde/gdata/mobilesecurity/activities/panicbutton/j;-><init>(Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;)V

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->g:Landroid/widget/CheckBox;

    new-instance v3, Lde/gdata/mobilesecurity/activities/panicbutton/k;

    invoke-direct {v3, p0}, Lde/gdata/mobilesecurity/activities/panicbutton/k;-><init>(Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;)V

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    new-instance v1, Lde/gdata/mobilesecurity/activities/panicbutton/l;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/panicbutton/l;-><init>(Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d03f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->f:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->h:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->g:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->i:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->j:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->k:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 152
    :cond_0
    :goto_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->a:Landroid/widget/ImageButton;

    new-instance v1, Lde/gdata/mobilesecurity/activities/panicbutton/n;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/panicbutton/n;-><init>(Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    return-void

    .line 105
    :cond_1
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0402

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->f:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->h:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->g:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->i:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->j:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->k:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 113
    :cond_2
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d03eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 114
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->f:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->h:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->g:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->i:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->j:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->k:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 121
    :cond_3
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0407

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->f:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->h:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->g:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->i:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->j:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->k:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->e:Landroid/widget/EditText;

    new-array v1, v6, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0xa0

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 130
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->e:Landroid/widget/EditText;

    new-instance v1, Lde/gdata/mobilesecurity/activities/panicbutton/m;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/panicbutton/m;-><init>(Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 149
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->g:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 163
    sget-object v0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 164
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 165
    sget-object v1, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->mActivity:Landroid/app/Activity;

    const-class v2, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 166
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 167
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->b:Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->e:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->setContent(Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->b:Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->f:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->setHeader(Ljava/lang/String;)V

    .line 169
    const-string v1, "panicAction"

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->b:Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 170
    const-string v1, "email"

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->g:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 171
    const-string v1, "sms"

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->h:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 172
    sget-object v1, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 174
    :cond_0
    return-void
.end method

.method static synthetic c(Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->b()V

    return-void
.end method


# virtual methods
.method public getPositionForActionProfile(Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 184
    .line 186
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v2, v0

    move v1, v0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v3, v2

    .line 187
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    if-nez v0, :cond_0

    .line 188
    add-int/lit8 v1, v1, 0x1

    .line 186
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 190
    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    .line 193
    :cond_1
    return v1
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 208
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 39
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 40
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f04000a

    const v1, 0x7f040007

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->overridePendingTransition(II)V

    .line 42
    sget-object v0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;->WIZARD_ACTIVITIES:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardTwo;->a()V

    .line 44
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    return v0
.end method
