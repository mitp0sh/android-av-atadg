.class public Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;",
        ">;"
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;

.field private final c:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 305
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;->b:Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;

    .line 306
    const v0, 0x1090004

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 303
    const v0, 0xffef

    iput v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;->a:I

    .line 307
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;->c:Landroid/view/LayoutInflater;

    .line 308
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 338
    if-nez p2, :cond_0

    .line 339
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f03006c

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 344
    :cond_0
    invoke-static {}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 345
    invoke-static {}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    .line 346
    const v1, 0x7f0b0151

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 348
    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 349
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 350
    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 351
    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 352
    invoke-static {}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 353
    const v2, 0x7f0b01c4

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 354
    new-instance v3, Lde/gdata/mobilesecurity/activities/usagecontrol/an;

    invoke-direct {v3, p0, v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/an;-><init>(Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    new-instance v2, Lde/gdata/mobilesecurity/activities/usagecontrol/ao;

    invoke-direct {v2, p0, p1, v1, v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/ao;-><init>(Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;ILandroid/widget/CheckBox;Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    const v1, 0x7f0b01c8

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 388
    new-instance v2, Lde/gdata/mobilesecurity/activities/usagecontrol/ap;

    invoke-direct {v2, p0, v0, v1}, Lde/gdata/mobilesecurity/activities/usagecontrol/ap;-><init>(Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    const v2, 0x7f0b01c7

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;->b:Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getmLocation(Landroid/content/Context;)Lde/gdata/mobilesecurity/activities/filter/LocationBean;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 400
    const v2, 0x7f0b0257

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 401
    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;->b:Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getmLocation(Landroid/content/Context;)Lde/gdata/mobilesecurity/activities/filter/LocationBean;

    move-result-object v3

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->getmAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    const v2, 0x7f0b0258

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;->b:Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v0, v4}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getmLocation(Landroid/content/Context;)Lde/gdata/mobilesecurity/activities/filter/LocationBean;

    move-result-object v4

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->getmRadius()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;->b:Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;

    const v5, 0x7f0d0311

    invoke-virtual {v4, v5}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    :cond_1
    const v2, 0x7f0b01cd

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getStringStartTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    const v2, 0x7f0b01ce

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getStringEndTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getIsActivated()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 411
    const v1, 0x7f0b01ca

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;->b:Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getSchedule()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->getWeekdaysAsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;->b:Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 415
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;->b:Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getApplicationFont()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lde/gdata/mobilesecurity/util/TypeFaces;->getTypeFace(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 417
    invoke-static {p2, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    .line 419
    :cond_2
    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x1

    return v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 321
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;->clear()V

    .line 322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 323
    if-eqz p1, :cond_0

    .line 324
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    .line 325
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;->add(Ljava/lang/Object;)V

    .line 326
    invoke-static {}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 329
    :cond_0
    return-void
.end method
