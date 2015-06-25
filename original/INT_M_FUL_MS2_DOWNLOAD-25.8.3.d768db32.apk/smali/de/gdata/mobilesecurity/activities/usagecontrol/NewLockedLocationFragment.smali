.class public Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field a:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field b:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field private c:Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

.field private d:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/LinearLayout;

.field private h:Z

.field private i:Landroid/widget/EditText;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/widget/CheckBox;

.field private n:Landroid/widget/CheckBox;

.field private o:Landroid/widget/CheckBox;

.field private p:Landroid/widget/LinearLayout;

.field private q:Z

.field private r:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->h:Z

    .line 349
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->q:Z

    .line 351
    new-instance v0, Lde/gdata/mobilesecurity/activities/usagecontrol/aa;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/aa;-><init>(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->r:Landroid/view/View$OnTouchListener;

    .line 504
    new-instance v0, Lde/gdata/mobilesecurity/activities/usagecontrol/ac;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/ac;-><init>(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->a:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 532
    new-instance v0, Lde/gdata/mobilesecurity/activities/usagecontrol/ad;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/ad;-><init>(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->b:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 559
    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 177
    const-string v0, ""

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->i:Landroid/widget/EditText;

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

    .line 180
    const v0, 0x7f0d027e

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 182
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->getWeeklyConfiguration()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 183
    const v0, 0x7f0d0282

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 186
    :cond_1
    return-object v0
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(II)V
    .locals 3

    .prologue
    .line 425
    new-instance v0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment$TimePickerFragment;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment$TimePickerFragment;-><init>(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;)V

    .line 429
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 430
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 431
    const-string v2, "hour"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 432
    const-string v2, "minute"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 434
    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment$TimePickerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 436
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "Time Picker"

    invoke-virtual {v0, v1, v2}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment$TimePickerFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 437
    return-void
.end method

.method private a(Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;Landroid/view/ViewGroup;)V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 402
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getSchedule()Ljava/lang/String;

    move-result-object v4

    .line 403
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 404
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 405
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

    .line 404
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 405
    goto :goto_1

    :cond_1
    move v2, v1

    .line 407
    :goto_2
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 408
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 409
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 414
    :goto_3
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    new-instance v4, Lde/gdata/mobilesecurity/activities/usagecontrol/ab;

    invoke-direct {v4, p0, p1, v2}, Lde/gdata/mobilesecurity/activities/usagecontrol/ab;-><init>(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;I)V

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 407
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 411
    :cond_2
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_3

    .line 422
    :cond_3
    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;II)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->a(II)V

    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->a(Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;Landroid/view/ViewGroup;)V

    return-void
.end method

.method private a(Landroid/support/v4/app/FragmentActivity;)Z
    .locals 5

    .prologue
    .line 379
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 380
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 382
    const/4 v0, 0x0

    .line 384
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 385
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 387
    invoke-virtual {v1, v3, v4, v2}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 389
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 390
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "GDataLockscreenActivity"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 391
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 393
    goto :goto_0

    .line 394
    :cond_0
    if-nez v1, :cond_1

    .line 395
    new-instance v0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment$MyHomeDialogFragment;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment$MyHomeDialogFragment;-><init>(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;)V

    .line 396
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment$MyHomeDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 398
    :cond_1
    return v1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;Landroid/support/v4/app/FragmentActivity;)Z
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->a(Landroid/support/v4/app/FragmentActivity;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;Z)Z
    .locals 0

    .prologue
    .line 55
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->h:Z

    return p1
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->m:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private b(II)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 458
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

.method static synthetic b(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;II)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->b(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 191
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->c:Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->isEveryday()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->m:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 193
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->g:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 199
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->m:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 196
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;Z)Z
    .locals 0

    .prologue
    .line 55
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->q:Z

    return p1
.end method

.method static synthetic c(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->g:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 202
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->c:Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->isFullDay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->n:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 204
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->p:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 209
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->n:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 207
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic d(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;)Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->c:Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 213
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->c:Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 214
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->k:Landroid/widget/TextView;

    const v1, 0x7f0d0327

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->setTodaysDate()V

    .line 216
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->c:Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->setValuesToLockedLocation(Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;)V

    .line 223
    :goto_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->c:Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getStringStartTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->f:Landroid/widget/EditText;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->c:Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getStringEndTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->o:Landroid/widget/CheckBox;

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->c:Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getmLocationId()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 226
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->b()V

    .line 227
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->c()V

    .line 228
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->m:Landroid/widget/CheckBox;

    new-instance v1, Lde/gdata/mobilesecurity/activities/usagecontrol/af;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/af;-><init>(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->e:Landroid/widget/EditText;

    new-instance v1, Lde/gdata/mobilesecurity/activities/usagecontrol/ag;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/ag;-><init>(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->f:Landroid/widget/EditText;

    new-instance v1, Lde/gdata/mobilesecurity/activities/usagecontrol/ah;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/ah;-><init>(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->j:Landroid/widget/TextView;

    new-instance v1, Lde/gdata/mobilesecurity/activities/usagecontrol/ai;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/ai;-><init>(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->n:Landroid/widget/CheckBox;

    new-instance v1, Lde/gdata/mobilesecurity/activities/usagecontrol/aj;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/aj;-><init>(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->c:Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getmLocation(Landroid/content/Context;)Lde/gdata/mobilesecurity/activities/filter/LocationBean;

    move-result-object v1

    .line 287
    const v0, 0x7f0d032a

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 288
    if-eqz v1, :cond_0

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->getmAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->getmRadius()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0d0311

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 292
    :cond_0
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->o:Landroid/widget/CheckBox;

    new-instance v1, Lde/gdata/mobilesecurity/activities/usagecontrol/ak;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/ak;-><init>(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->c:Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->g:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->a(Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;Landroid/view/ViewGroup;)V

    .line 304
    return-void

    .line 218
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->k:Landroid/widget/TextView;

    const v1, 0x7f0d0328

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->i:Landroid/widget/EditText;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->c:Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 225
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method static synthetic e(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method private e()V
    .locals 6

    .prologue
    .line 601
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->c:Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getmLocation(Landroid/content/Context;)Lde/gdata/mobilesecurity/activities/filter/LocationBean;

    move-result-object v0

    .line 602
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lde/gdata/mobilesecurity/activities/filter/LocationPickerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 603
    if-eqz v0, :cond_0

    .line 604
    const-string v2, "LAT"

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->getmLatitude()D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 605
    const-string v2, "LNG"

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->getmLongitude()D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 607
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 608
    return-void
.end method

.method static synthetic f(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic g(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->e()V

    return-void
.end method

.method static synthetic h(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->n:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic i(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->p:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic j(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->o:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic k(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;)Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->h:Z

    return v0
.end method


# virtual methods
.method public addOnEditListener(Landroid/view/ViewGroup;)Z
    .locals 3

    .prologue
    .line 360
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 361
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 362
    instance-of v2, v0, Landroid/widget/EditText;

    if-eqz v2, :cond_1

    .line 363
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->r:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 360
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 364
    :cond_1
    instance-of v2, v0, Landroid/widget/RadioButton;

    if-eqz v2, :cond_2

    .line 365
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->r:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1

    .line 366
    :cond_2
    instance-of v2, v0, Landroid/widget/ToggleButton;

    if-eqz v2, :cond_3

    .line 367
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->r:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1

    .line 368
    :cond_3
    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_4

    .line 369
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->r:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1

    .line 370
    :cond_4
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 371
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->addOnEditListener(Landroid/view/ViewGroup;)Z

    goto :goto_1

    .line 374
    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method public checkSaveDialog()V
    .locals 8

    .prologue
    .line 131
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    const/4 v0, 0x0

    .line 133
    new-instance v1, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 134
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->c:Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->setValuesToLockedLocation(Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;)V

    .line 135
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->c:Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getProfile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->setProfil(Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->c:Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->saveIntoDB(Landroid/content/Context;)V

    .line 137
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p0, v1}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->a(Landroid/support/v4/app/FragmentActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    const/4 v0, 0x1

    .line 140
    :cond_0
    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 168
    :cond_1
    :goto_0
    return-void

    .line 144
    :cond_2
    new-instance v6, Lde/gdata/mobilesecurity/activities/usagecontrol/y;

    invoke-direct {v6, p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/y;-><init>(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;)V

    .line 151
    new-instance v5, Lde/gdata/mobilesecurity/activities/usagecontrol/ae;

    invoke-direct {v5, p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/ae;-><init>(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;)V

    .line 158
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 160
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0d00fc

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0d0115

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0d0101

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v7, 0x7f0d0114

    invoke-virtual {v4, v7}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v6}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    move-result-object v0

    .line 165
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "WANNA_SAVE"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public configurateLockscreen()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 583
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 586
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 590
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 591
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 592
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 593
    const-string v1, "INITIALIZE"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 594
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 596
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 597
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 598
    return-void
.end method

.method public getWeeklyConfiguration()Ljava/lang/String;
    .locals 4

    .prologue
    .line 440
    const-string v1, ""

    .line 441
    const/4 v0, 0x0

    move v3, v0

    move-object v0, v1

    move v1, v3

    :goto_0
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->l:Landroid/widget/LinearLayout;

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

    .line 441
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0

    .line 442
    :cond_0
    const-string v0, "0"

    goto :goto_1

    .line 444
    :cond_1
    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 87
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    .line 618
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 619
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 620
    const-string v0, "ADDRESS"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 621
    const-string v0, "LNG"

    invoke-virtual {p3, v0, v4, v5}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v2

    .line 622
    const-string v0, "LAT"

    invoke-virtual {p3, v0, v4, v5}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v4

    .line 623
    const-string v0, "RADIUS"

    const/4 v6, 0x0

    invoke-virtual {p3, v0, v6}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    float-to-int v6, v0

    .line 625
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

    .line 626
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->c:Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v0, v7}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getmLocation(Landroid/content/Context;)Lde/gdata/mobilesecurity/activities/filter/LocationBean;

    move-result-object v0

    .line 627
    if-nez v0, :cond_2

    .line 628
    new-instance v0, Lde/gdata/mobilesecurity/activities/filter/LocationBean;

    int-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lde/gdata/mobilesecurity/activities/filter/LocationBean;-><init>(Ljava/lang/String;DDI)V

    .line 629
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->c:Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    invoke-virtual {v2, v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->setmLocation(Lde/gdata/mobilesecurity/activities/filter/LocationBean;)V

    .line 636
    :goto_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v0}, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->updateLocationIntoDB(Landroid/content/Context;Lde/gdata/mobilesecurity/activities/filter/LocationBean;)V

    .line 637
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RESULT ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->getmId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 638
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->c:Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->getmId()I

    move-result v0

    invoke-virtual {v2, v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->setmLocationId(I)V

    .line 640
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 642
    :cond_0
    if-nez p2, :cond_1

    .line 646
    :cond_1
    return-void

    .line 631
    :cond_2
    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->setmAddress(Ljava/lang/String;)V

    .line 632
    invoke-virtual {v0, v4, v5}, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->setmLatitude(D)V

    .line 633
    invoke-virtual {v0, v2, v3}, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->setmLongitude(D)V

    .line 634
    invoke-virtual {v0, v6}, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->setmRadius(I)V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->q:Z

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->checkSaveDialog()V

    .line 126
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 124
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->setHasOptionsMenu(Z)V

    .line 80
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 309
    const v0, 0x7f0f0004

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 310
    const v0, 0x7f0b0393

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 311
    if-nez v0, :cond_0

    .line 347
    :goto_0
    return-void

    .line 312
    :cond_0
    invoke-static {v0}, Landroid/support/v4/view/MenuItemCompat;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 313
    const v1, 0x7f0b0156

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 314
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f0d0220

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 315
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f0d021e

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 316
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lde/gdata/mobilesecurity/activities/usagecontrol/al;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/al;-><init>(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lde/gdata/mobilesecurity/activities/usagecontrol/z;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/z;-><init>(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const v3, 0x7f0b01c9

    .line 91
    const v0, 0x7f03007b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 92
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 93
    const-string v2, "lockedLocation"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->c:Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    .line 95
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->d:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 97
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 98
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getApplicationFont()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lde/gdata/mobilesecurity/util/TypeFaces;->getTypeFace(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 99
    invoke-static {v1, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    .line 101
    const v0, 0x7f0b02c2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->e:Landroid/widget/EditText;

    .line 102
    const v0, 0x7f0b02c3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->f:Landroid/widget/EditText;

    .line 103
    const v0, 0x7f0b022e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->i:Landroid/widget/EditText;

    .line 104
    const v0, 0x7f0b02d8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->k:Landroid/widget/TextView;

    .line 105
    const v0, 0x7f0b0257

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->j:Landroid/widget/TextView;

    .line 106
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->g:Landroid/widget/LinearLayout;

    .line 107
    const v0, 0x7f0b02b7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->m:Landroid/widget/CheckBox;

    .line 108
    const v0, 0x7f0b02c0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->n:Landroid/widget/CheckBox;

    .line 109
    const v0, 0x7f0b02c1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->p:Landroid/widget/LinearLayout;

    .line 110
    const v0, 0x7f0b02cf

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->o:Landroid/widget/CheckBox;

    .line 112
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->l:Landroid/widget/LinearLayout;

    .line 114
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->d()V

    move-object v0, v1

    .line 115
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->addOnEditListener(Landroid/view/ViewGroup;)Z

    .line 117
    return-object v1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 612
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 613
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->c:Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->setValuesToLockedLocation(Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;)V

    .line 614
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 172
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 173
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->d()V

    .line 174
    return-void
.end method

.method public setTodaysDate()V
    .locals 6

    .prologue
    const/16 v5, 0xc

    const/16 v4, 0xb

    const/4 v0, 0x1

    .line 463
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 464
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    .line 465
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    .line 466
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    .line 467
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 468
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 469
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 470
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 472
    add-int/lit8 v1, v4, 0x1

    .line 473
    const/16 v4, 0x18

    if-le v1, v4, :cond_0

    .line 475
    :goto_0
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->e:Landroid/widget/EditText;

    invoke-direct {p0, v2, v3}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->b(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 476
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->f:Landroid/widget/EditText;

    invoke-direct {p0, v0, v5}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->b(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 477
    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public setValuesToLockedLocation(Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;)V
    .locals 2

    .prologue
    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->i:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->setName(Ljava/lang/String;)V

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->timeStringToDate(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->setFromTime(Ljava/lang/Long;)V

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->timeStringToDate(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->setTillTime(Ljava/lang/Long;)V

    .line 452
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->getWeeklyConfiguration()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->setSchedule(Ljava/lang/String;)V

    .line 453
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->setActivated(Z)V

    .line 455
    return-void
.end method
