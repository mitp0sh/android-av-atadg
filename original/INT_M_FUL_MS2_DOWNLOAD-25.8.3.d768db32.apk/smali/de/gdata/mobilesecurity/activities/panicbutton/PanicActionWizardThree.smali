.class public Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"


# static fields
.field private static l:I


# instance fields
.field private a:Landroid/widget/ImageButton;

.field private b:Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/EditText;

.field private e:Z

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ImageButton;

.field private h:Ljava/lang/String;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x1

    sput v0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->l:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 49
    const v0, 0x7f030081

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->setContentView(I)V

    .line 50
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 51
    const-string v0, "panicAction"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->b:Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;

    .line 52
    const v0, 0x7f0b02fd

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->a:Landroid/widget/ImageButton;

    .line 53
    const v0, 0x7f0b02e3

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->f:Landroid/widget/TextView;

    .line 54
    const v0, 0x7f0b02e0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->c:Landroid/widget/TextView;

    .line 55
    const v0, 0x7f0b02df

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->d:Landroid/widget/EditText;

    .line 56
    const v0, 0x7f0b02fc

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->i:Landroid/widget/TextView;

    .line 57
    const v0, 0x7f0b02fb

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 59
    const v1, 0x7f0b02f9

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->j:Landroid/view/View;

    .line 60
    const v1, 0x7f0b0232

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->k:Landroid/view/View;

    .line 62
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070010

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->b:Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->getPositionForActionProfile(Ljava/lang/String;)I

    move-result v3

    aget-object v1, v1, v3

    iput-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->h:Ljava/lang/String;

    .line 64
    sget-object v1, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;->WIZARD_ACTIVITIES:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    const v1, 0x7f0b02e1

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->g:Landroid/widget/ImageButton;

    .line 66
    new-instance v1, Lde/gdata/mobilesecurity/activities/panicbutton/g;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/panicbutton/g;-><init>(Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->j:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->k:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->h:Ljava/lang/String;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d03f2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    iput-boolean v6, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->e:Z

    .line 80
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->j:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->k:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 114
    :cond_0
    :goto_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->g:Landroid/widget/ImageButton;

    new-instance v1, Lde/gdata/mobilesecurity/activities/panicbutton/h;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/panicbutton/h;-><init>(Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->a:Landroid/widget/ImageButton;

    new-instance v1, Lde/gdata/mobilesecurity/activities/panicbutton/i;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/panicbutton/i;-><init>(Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    return-void

    .line 83
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->h:Ljava/lang/String;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d0402

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 85
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    const-string v0, "email"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 92
    iput-boolean v6, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->e:Z

    .line 93
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->j:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->k:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 96
    :cond_2
    const-string v0, "sms"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->i:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 101
    :cond_3
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->h:Ljava/lang/String;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d03eb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 102
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    iput-boolean v4, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->e:Z

    goto/16 :goto_0

    .line 107
    :cond_4
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->h:Ljava/lang/String;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0407

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    iput-boolean v4, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->e:Z

    goto/16 :goto_0
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;)Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->e:Z

    return v0
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;)Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->b:Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;

    return-object v0
.end method


# virtual methods
.method public getPositionForActionProfile(Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 197
    .line 199
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->getResources()Landroid/content/res/Resources;

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

    .line 200
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    if-nez v0, :cond_0

    .line 201
    add-int/lit8 v1, v1, 0x1

    .line 199
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 203
    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    .line 206
    :cond_1
    return v1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 18

    .prologue
    .line 162
    invoke-super/range {p0 .. p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 164
    if-nez p3, :cond_1

    .line 187
    :cond_0
    return-void

    .line 166
    :cond_1
    const-string v2, "numberpicker_entries"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 167
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 169
    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyUtil;->getEmptyIfNull(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/gdata/mobilesecurity/contacts/NumberPicker$NumberEntry;

    .line 170
    invoke-interface {v2}, Lde/gdata/mobilesecurity/contacts/NumberPicker$NumberEntry;->getNumbers()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lde/gdata/mobilesecurity/util/MyUtil;->getEmptyIfNull(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_3
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 171
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v2}, Lde/gdata/mobilesecurity/contacts/NumberPicker$NumberEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 173
    new-instance v3, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;

    const-wide/16 v4, 0x0

    invoke-interface {v2}, Lde/gdata/mobilesecurity/contacts/NumberPicker$NumberEntry;->getName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xf

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v8, v9}, Lde/gdata/mobilesecurity/util/MyUtil;->normalizePhoneNumber(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    sget v11, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->STAT_NORMAL:I

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v3 .. v15}, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;-><init>(JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;IIJILandroid/graphics/Bitmap;)V

    .line 177
    move-object/from16 v0, p0

    iget-object v4, v0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->c:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    .line 178
    move-object/from16 v0, p0

    iget-object v4, v0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->b:Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->getDisplayNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->setContact(Ljava/lang/String;)V

    .line 179
    move-object/from16 v0, p0

    iget-object v4, v0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->c:Landroid/widget/TextView;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    move-object/from16 v0, p0

    iget-object v4, v0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->h:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0402

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 181
    move-object/from16 v0, p0

    iget-object v4, v0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->d:Landroid/widget/EditText;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 226
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 43
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f04000a

    const v1, 0x7f040007

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->overridePendingTransition(II)V

    .line 45
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->a()V

    .line 46
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 220
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 221
    return-void
.end method

.method public onListClicked()V
    .locals 5

    .prologue
    .line 153
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 154
    const-class v1, Lde/gdata/mobilesecurity/contacts/NumberPicker;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 155
    const-string v1, "title"

    const v2, 0x7f0d0098

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "##to##"

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    const-string v1, "is_single_choice"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 157
    sget v1, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->l:I

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardThree;->startActivityForResult(Landroid/content/Intent;I)V

    .line 158
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    return v0
.end method
