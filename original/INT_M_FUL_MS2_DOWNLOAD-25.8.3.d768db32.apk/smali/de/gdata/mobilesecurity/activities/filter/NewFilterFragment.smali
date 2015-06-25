.class public Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field private A:Landroid/widget/CheckBox;

.field private B:Z

.field private C:Landroid/view/View$OnTouchListener;

.field a:Landroid/widget/EditText;

.field b:Landroid/widget/EditText;

.field c:Landroid/widget/CheckBox;

.field d:Landroid/widget/CheckBox;

.field e:Landroid/widget/CheckBox;

.field f:Landroid/widget/CheckBox;

.field g:Landroid/widget/Spinner;

.field h:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field i:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Landroid/widget/EditText;

.field private n:Landroid/widget/LinearLayout;

.field private o:Landroid/widget/EditText;

.field private p:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/CheckBox;

.field private t:Landroid/widget/CheckBox;

.field private u:Landroid/widget/LinearLayout;

.field private v:Landroid/widget/LinearLayout;

.field private w:Landroid/widget/LinearLayout;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/LinearLayout;

.field private z:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 50
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->j:Z

    .line 51
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->k:Z

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->l:Z

    .line 420
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->B:Z

    .line 422
    new-instance v0, Lde/gdata/mobilesecurity/activities/filter/z;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/activities/filter/z;-><init>(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->C:Landroid/view/View$OnTouchListener;

    .line 696
    new-instance v0, Lde/gdata/mobilesecurity/activities/filter/ad;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/activities/filter/ad;-><init>(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->h:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 725
    new-instance v0, Lde/gdata/mobilesecurity/activities/filter/ae;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/activities/filter/ae;-><init>(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->i:Landroid/app/TimePickerDialog$OnTimeSetListener;

    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)Lde/gdata/mobilesecurity/activities/filter/FilterGroup;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->p:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    return-object v0
.end method

.method private a(Lde/gdata/mobilesecurity/activities/filter/FilterGroup;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 562
    const-string v0, ""

    .line 564
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->m:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 565
    const v0, 0x7f0d027e

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 567
    :cond_0
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->d:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->c:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->e:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 568
    const v0, 0x7f0d0276

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 570
    :cond_1
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->getWeeklyConfiguration()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 571
    const v0, 0x7f0d0282

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 575
    :cond_2
    return-object v0
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;II)Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->b(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;Lde/gdata/mobilesecurity/activities/filter/FilterGroup;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->a(Lde/gdata/mobilesecurity/activities/filter/FilterGroup;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 261
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->p:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->isFullDay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->s:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 263
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->u:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 268
    :goto_0
    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->s:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 266
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(II)V
    .locals 3

    .prologue
    .line 603
    new-instance v0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment$TimePickerFragment;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment$TimePickerFragment;-><init>(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)V

    .line 607
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 608
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 609
    const-string v2, "hour"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 610
    const-string v2, "minute"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 612
    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment$TimePickerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 614
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "Time Picker"

    invoke-virtual {v0, v1, v2}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment$TimePickerFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 615
    return-void
.end method

.method private a(Lde/gdata/mobilesecurity/activities/filter/FilterGroup;Landroid/view/ViewGroup;)V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 579
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getSchedule()Ljava/lang/String;

    move-result-object v4

    .line 580
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 581
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 582
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "1"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 582
    goto :goto_1

    :cond_1
    move v2, v1

    .line 584
    :goto_2
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 585
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 586
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 591
    :goto_3
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    new-instance v4, Lde/gdata/mobilesecurity/activities/filter/ac;

    invoke-direct {v4, p0, p1, v2}, Lde/gdata/mobilesecurity/activities/filter/ac;-><init>(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;Lde/gdata/mobilesecurity/activities/filter/FilterGroup;I)V

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 584
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 588
    :cond_2
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_3

    .line 600
    :cond_3
    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;Lde/gdata/mobilesecurity/activities/filter/FilterGroup;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->a(Lde/gdata/mobilesecurity/activities/filter/FilterGroup;Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;Z)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 238
    if-eqz p1, :cond_0

    .line 239
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->w:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 245
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->e:Landroid/widget/CheckBox;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->p:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getIsSms()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->s:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private b(II)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 618
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 271
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->p:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->isEveryday()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->t:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 273
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->v:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 279
    :goto_0
    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->t:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 276
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;II)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->a(II)V

    return-void
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;Z)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 248
    if-eqz p1, :cond_1

    .line 249
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->f:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 255
    :goto_0
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->k:Z

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 258
    :cond_0
    return-void

    .line 252
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->f:Landroid/widget/CheckBox;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->p:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->isAllowAnonymousCalls()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method static synthetic c(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->u:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private c()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 283
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->k:Z

    if-nez v0, :cond_0

    .line 284
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->j:Z

    if-nez v0, :cond_3

    .line 285
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->r:Landroid/widget/TextView;

    const v3, 0x7f0d039e

    invoke-virtual {p0, v3}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->setTodaysDate()V

    .line 287
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->p:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->setValuesToFilterGroup(Lde/gdata/mobilesecurity/activities/filter/FilterGroup;)V

    .line 292
    :cond_0
    :goto_0
    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->g:Landroid/widget/Spinner;

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->p:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getIsBlacklist()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 294
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->o:Landroid/widget/EditText;

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->p:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->c:Landroid/widget/CheckBox;

    new-instance v3, Lde/gdata/mobilesecurity/activities/filter/ag;

    invoke-direct {v3, p0}, Lde/gdata/mobilesecurity/activities/filter/ag;-><init>(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->p:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getIsIncoming()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v2

    :goto_2
    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->a(Z)V

    .line 304
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->p:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getIsIncoming()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v2

    :goto_3
    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->b(Z)V

    .line 305
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->c:Landroid/widget/CheckBox;

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->p:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getIsIncoming()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 306
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->d:Landroid/widget/CheckBox;

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->p:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getIsOutgoing()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 307
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->z:Landroid/widget/CheckBox;

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->p:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getLocationId()I

    move-result v3

    if-eqz v3, :cond_7

    :goto_4
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 308
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->A:Landroid/widget/CheckBox;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->p:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getIncludesTB()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 310
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->e:Landroid/widget/CheckBox;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->p:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getIsSms()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 311
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->f:Landroid/widget/CheckBox;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->p:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->isAllowAnonymousCalls()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 313
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->a()V

    .line 314
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->b()V

    .line 315
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->p:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->v:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v2}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->a(Lde/gdata/mobilesecurity/activities/filter/FilterGroup;Landroid/view/ViewGroup;)V

    .line 317
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->s:Landroid/widget/CheckBox;

    new-instance v2, Lde/gdata/mobilesecurity/activities/filter/ah;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/filter/ah;-><init>(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->t:Landroid/widget/CheckBox;

    new-instance v2, Lde/gdata/mobilesecurity/activities/filter/ai;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/filter/ai;-><init>(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->a:Landroid/widget/EditText;

    new-instance v2, Lde/gdata/mobilesecurity/activities/filter/aj;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/filter/aj;-><init>(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->b:Landroid/widget/EditText;

    new-instance v2, Lde/gdata/mobilesecurity/activities/filter/ak;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/filter/ak;-><init>(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->a:Landroid/widget/EditText;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->p:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getStringStartTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 373
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->b:Landroid/widget/EditText;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->p:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getStringEndTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 375
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->q:Landroid/widget/TextView;

    new-instance v2, Lde/gdata/mobilesecurity/activities/filter/al;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/filter/al;-><init>(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->x:Landroid/widget/TextView;

    new-instance v2, Lde/gdata/mobilesecurity/activities/filter/am;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/filter/am;-><init>(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->z:Landroid/widget/CheckBox;

    new-instance v2, Lde/gdata/mobilesecurity/activities/filter/y;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/filter/y;-><init>(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    const-string v0, ""

    .line 401
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->p:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getLocation(Landroid/content/Context;)Lde/gdata/mobilesecurity/activities/filter/LocationBean;

    move-result-object v2

    .line 402
    if-eqz v2, :cond_1

    .line 403
    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->x:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->getmAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->getmRadius()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v4, 0x7f0d0311

    invoke-virtual {p0, v4}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    :cond_1
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->p:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getRefreshedContacts(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v0

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;

    .line 407
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 408
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->p:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getContacts()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 409
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v2, v0

    .line 411
    goto :goto_5

    .line 289
    :cond_3
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->r:Landroid/widget/TextView;

    const v3, 0x7f0d0252

    invoke-virtual {p0, v3}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 292
    goto/16 :goto_1

    :cond_5
    move v0, v1

    .line 303
    goto/16 :goto_2

    :cond_6
    move v0, v1

    .line 304
    goto/16 :goto_3

    :cond_7
    move v2, v1

    .line 307
    goto/16 :goto_4

    .line 413
    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 414
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    :goto_6
    return-void

    .line 416
    :cond_9
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->q:Landroid/widget/TextView;

    const v1, 0x7f0d0207

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6
.end method

.method static synthetic c(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;Z)Z
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->l:Z

    return p1
.end method

.method static synthetic d(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->t:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private d()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 449
    iput-boolean v6, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->j:Z

    .line 450
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->p:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getLocation(Landroid/content/Context;)Lde/gdata/mobilesecurity/activities/filter/LocationBean;

    move-result-object v0

    .line 451
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lde/gdata/mobilesecurity/activities/filter/LocationPickerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 452
    if-eqz v0, :cond_0

    .line 453
    const-string v2, "LAT"

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->getmLatitude()D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 454
    const-string v2, "LNG"

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->getmLongitude()D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 456
    :cond_0
    invoke-virtual {p0, v1, v6}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 457
    return-void
.end method

.method static synthetic d(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;Z)Z
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->B:Z

    return p1
.end method

.method static synthetic e(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->v:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic f(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->d()V

    return-void
.end method

.method static synthetic g(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->z:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic h(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->l:Z

    return v0
.end method


# virtual methods
.method public addOnEditListener(Landroid/view/ViewGroup;)Z
    .locals 3

    .prologue
    .line 431
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 432
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 433
    instance-of v2, v0, Landroid/widget/EditText;

    if-eqz v2, :cond_1

    .line 434
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->C:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 431
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 435
    :cond_1
    instance-of v2, v0, Landroid/widget/RadioButton;

    if-eqz v2, :cond_2

    .line 436
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->C:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1

    .line 437
    :cond_2
    instance-of v2, v0, Landroid/widget/ToggleButton;

    if-eqz v2, :cond_3

    .line 438
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->C:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1

    .line 439
    :cond_3
    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_4

    .line 440
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->C:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1

    .line 441
    :cond_4
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 442
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->addOnEditListener(Landroid/view/ViewGroup;)Z

    goto :goto_1

    .line 445
    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method public checkSaveDialog()V
    .locals 8

    .prologue
    .line 517
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->p:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->a(Lde/gdata/mobilesecurity/activities/filter/FilterGroup;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->p:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->setValuesToFilterGroup(Lde/gdata/mobilesecurity/activities/filter/FilterGroup;)V

    .line 519
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->p:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->updateInDB(Landroid/content/Context;)I

    .line 520
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 546
    :cond_0
    :goto_0
    return-void

    .line 522
    :cond_1
    new-instance v6, Lde/gdata/mobilesecurity/activities/filter/aa;

    invoke-direct {v6, p0}, Lde/gdata/mobilesecurity/activities/filter/aa;-><init>(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)V

    .line 529
    new-instance v5, Lde/gdata/mobilesecurity/activities/filter/ab;

    invoke-direct {v5, p0}, Lde/gdata/mobilesecurity/activities/filter/ab;-><init>(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)V

    .line 536
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->p:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->a(Lde/gdata/mobilesecurity/activities/filter/FilterGroup;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 538
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0d00fc

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->p:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-direct {p0, v3}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->a(Lde/gdata/mobilesecurity/activities/filter/FilterGroup;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0d0115

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0d0101

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v7, 0x7f0d0114

    invoke-virtual {v4, v7}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v6}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    move-result-object v0

    .line 543
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "WANNA_SAVE"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getWeeklyConfiguration()Ljava/lang/String;
    .locals 4

    .prologue
    .line 643
    const-string v1, ""

    .line 644
    const/4 v0, 0x0

    move v3, v0

    move-object v0, v1

    move v1, v3

    :goto_0
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 645
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 644
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0

    .line 645
    :cond_0
    const-string v0, "0"

    goto :goto_1

    .line 647
    :cond_1
    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 93
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    .line 461
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 462
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 463
    const-string v0, "ADDRESS"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 464
    const-string v0, "LNG"

    invoke-virtual {p3, v0, v4, v5}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v2

    .line 465
    const-string v0, "LAT"

    invoke-virtual {p3, v0, v4, v5}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v4

    .line 466
    const-string v0, "RADIUS"

    const/4 v6, 0x0

    invoke-virtual {p3, v0, v6}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    float-to-int v6, v0

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RESULT "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->p:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v0, v7}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getLocation(Landroid/content/Context;)Lde/gdata/mobilesecurity/activities/filter/LocationBean;

    move-result-object v0

    .line 470
    if-nez v0, :cond_2

    .line 471
    new-instance v0, Lde/gdata/mobilesecurity/activities/filter/LocationBean;

    int-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lde/gdata/mobilesecurity/activities/filter/LocationBean;-><init>(Ljava/lang/String;DDI)V

    .line 472
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->p:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-virtual {v2, v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setLocation(Lde/gdata/mobilesecurity/activities/filter/LocationBean;)V

    .line 479
    :goto_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v0}, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->updateLocationIntoDB(Landroid/content/Context;Lde/gdata/mobilesecurity/activities/filter/LocationBean;)V

    .line 481
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->p:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->getmId()I

    move-result v0

    invoke-virtual {v2, v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setLocationId(I)V

    .line 483
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->x:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    :cond_0
    if-nez p2, :cond_1

    .line 489
    :cond_1
    return-void

    .line 474
    :cond_2
    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->setmAddress(Ljava/lang/String;)V

    .line 475
    invoke-virtual {v0, v4, v5}, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->setmLatitude(D)V

    .line 476
    invoke-virtual {v0, v2, v3}, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->setmLongitude(D)V

    .line 477
    invoke-virtual {v0, v6}, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->setmRadius(I)V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 507
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->B:Z

    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->checkSaveDialog()V

    .line 512
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 510
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->setHasOptionsMenu(Z)V

    .line 87
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 88
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 197
    const v0, 0x7f0f0004

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 198
    const v0, 0x7f0b0393

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 199
    if-nez v0, :cond_0

    .line 235
    :goto_0
    return-void

    .line 200
    :cond_0
    invoke-static {v0}, Landroid/support/v4/view/MenuItemCompat;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 201
    const v1, 0x7f0b0156

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 202
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f0d0220

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 203
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f0d021e

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 204
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lde/gdata/mobilesecurity/activities/filter/x;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/filter/x;-><init>(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lde/gdata/mobilesecurity/activities/filter/af;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/filter/af;-><init>(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11

    .prologue
    .line 98
    const v0, 0x7f030079

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 99
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_2

    .line 102
    const-string v1, "phoneNo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 103
    const-string v1, "displayName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 104
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "filterGroupId"

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 106
    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    .line 107
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->p:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    long-to-int v1, v2

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->loadFilterGroupById(Landroid/content/Context;I)Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->p:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    .line 112
    :goto_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->p:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 114
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getCallfilterConfig()Ljava/lang/String;

    move-result-object v2

    .line 115
    new-instance v0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    const-string v1, ""

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-wide/32 v4, 0x5265c00

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "0000000"

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->p:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    .line 117
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->p:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setIsIncoming(Z)V

    .line 118
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->p:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setIsSms(Z)V

    .line 119
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->p:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    const-string v1, "1111111"

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setSchedule(Ljava/lang/String;)V

    .line 122
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->p:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->j:Z

    .line 124
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->p:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setContacts(Ljava/util/ArrayList;)V

    .line 125
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->p:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->updateContactsInDB(Landroid/content/Context;)V

    .line 130
    :goto_1
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 131
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getApplicationFont()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lde/gdata/mobilesecurity/util/TypeFaces;->getTypeFace(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 132
    invoke-static {v8, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    .line 136
    const v0, 0x7f0b02b6

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->r:Landroid/widget/TextView;

    .line 137
    const v0, 0x7f0b022e

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->o:Landroid/widget/EditText;

    .line 138
    const v0, 0x7f0b02cc

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->g:Landroid/widget/Spinner;

    .line 139
    const v0, 0x7f0b02c5

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->c:Landroid/widget/CheckBox;

    .line 140
    const v0, 0x7f0b02cb

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->d:Landroid/widget/CheckBox;

    .line 141
    const v0, 0x7f0b02c8

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->e:Landroid/widget/CheckBox;

    .line 142
    const v0, 0x7f0b02ca

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->f:Landroid/widget/CheckBox;

    .line 143
    const v0, 0x7f0b02cf

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->z:Landroid/widget/CheckBox;

    .line 144
    const v0, 0x7f0b02d3

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->A:Landroid/widget/CheckBox;

    .line 146
    const v0, 0x7f0b02c2

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->a:Landroid/widget/EditText;

    .line 147
    const v0, 0x7f0b02c3

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->b:Landroid/widget/EditText;

    .line 148
    const v0, 0x7f0b022e

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->m:Landroid/widget/EditText;

    .line 149
    const v0, 0x7f0b02c1

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->u:Landroid/widget/LinearLayout;

    .line 150
    const v0, 0x7f0b02c7

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->w:Landroid/widget/LinearLayout;

    .line 151
    const v0, 0x7f0b02c9

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->y:Landroid/widget/LinearLayout;

    .line 152
    const v0, 0x7f0b01c9

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->v:Landroid/widget/LinearLayout;

    .line 153
    const v0, 0x7f0b01c9

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->n:Landroid/widget/LinearLayout;

    .line 154
    const v0, 0x7f0b016c

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->q:Landroid/widget/TextView;

    .line 155
    const v0, 0x7f0b02d0

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->x:Landroid/widget/TextView;

    .line 156
    const v0, 0x7f0b02c0

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->s:Landroid/widget/CheckBox;

    .line 157
    const v0, 0x7f0b02b7

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->t:Landroid/widget/CheckBox;

    .line 159
    if-eqz v9, :cond_1

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->k:Z

    .line 161
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v1, v9

    .line 164
    :goto_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->p:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setName(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->r:Landroid/widget/TextView;

    const v2, 0x7f0d01b1

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->g:Landroid/widget/Spinner;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 169
    const v0, 0x7f0b02ce

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 170
    const v0, 0x7f0b022c

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 171
    const v0, 0x7f0b02d1

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 172
    const v0, 0x7f0b0230

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 173
    const v0, 0x7f0b02cd

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 174
    const v0, 0x7f0b02c9

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 175
    const v0, 0x7f0b02d2

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 176
    const v0, 0x7f0b02d5

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->o:Landroid/widget/EditText;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->p:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 179
    new-instance v0, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;

    const/4 v4, 0x3

    const/4 v5, 0x0

    sget v6, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->STAT_NORMAL:I

    move-object v2, v9

    move-object v3, v9

    invoke-direct/range {v0 .. v6}, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 181
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 182
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->p:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setContacts(Ljava/util/ArrayList;)V

    .line 184
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->p:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->updateContactsInDB(Landroid/content/Context;)V

    .line 187
    :cond_1
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->c()V

    move-object v0, v8

    .line 189
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->addOnEditListener(Landroid/view/ViewGroup;)Z

    .line 191
    :cond_2
    return-object v8

    .line 109
    :cond_3
    const-string v1, "filterGroup"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->p:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    goto/16 :goto_0

    .line 127
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->j:Z

    goto/16 :goto_1

    :cond_5
    move-object v1, v10

    goto/16 :goto_2
.end method

.method public onListClicked(Lde/gdata/mobilesecurity/activities/filter/FilterGroup;)V
    .locals 3

    .prologue
    .line 550
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->j:Z

    .line 551
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 552
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 553
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 555
    const-string v1, "filterGroup"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 557
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 558
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 500
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 502
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->p:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->setValuesToFilterGroup(Lde/gdata/mobilesecurity/activities/filter/FilterGroup;)V

    .line 504
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 493
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 495
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->c()V

    .line 496
    return-void
.end method

.method public setTodaysDate()V
    .locals 7

    .prologue
    const/16 v6, 0xc

    const/16 v5, 0xb

    const/4 v0, 0x1

    .line 623
    const/16 v2, 0x18

    .line 625
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 626
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    .line 627
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    .line 628
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    .line 629
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 630
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 631
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 632
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 634
    add-int v1, v5, v0

    .line 636
    if-le v1, v2, :cond_0

    .line 638
    :goto_0
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->a:Landroid/widget/EditText;

    invoke-direct {p0, v3, v4}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->b(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 639
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->b:Landroid/widget/EditText;

    invoke-direct {p0, v0, v6}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->b(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 640
    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public setValuesToFilterGroup(Lde/gdata/mobilesecurity/activities/filter/FilterGroup;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 651
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setIsIncoming(Z)V

    .line 652
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->g:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setIsBlacklist(Z)V

    .line 653
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setIsSms(Z)V

    .line 654
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setIsOutgoing(Z)V

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->m:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setName(Ljava/lang/String;)V

    .line 656
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->f:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setAllowAnonymousCalls(Z)V

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->timeStringToDate(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setFromTime(Ljava/lang/Long;)V

    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->timeStringToDate(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setTillTime(Ljava/lang/Long;)V

    .line 659
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->getWeeklyConfiguration()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setSchedule(Ljava/lang/String;)V

    .line 660
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->A:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setIncludesTB(Z)V

    .line 662
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->z:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 663
    invoke-virtual {p1, v1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setLocationId(I)V

    .line 664
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setLocation(Lde/gdata/mobilesecurity/activities/filter/LocationBean;)V

    .line 667
    :cond_0
    invoke-virtual {p1, v1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setActivated(Z)V

    .line 668
    return-void

    :cond_1
    move v0, v1

    .line 652
    goto/16 :goto_0
.end method
