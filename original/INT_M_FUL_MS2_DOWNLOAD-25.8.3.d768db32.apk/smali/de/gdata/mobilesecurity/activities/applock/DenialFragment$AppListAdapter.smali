.class public Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lde/gdata/mobilesecurity/activities/applock/LockedApp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/applock/DenialFragment;

.field private final b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/activities/applock/DenialFragment;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 402
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;->a:Lde/gdata/mobilesecurity/activities/applock/DenialFragment;

    .line 403
    const v0, 0x1090004

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 404
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;->b:Landroid/view/LayoutInflater;

    .line 405
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 418
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const v6, 0x7f0b0152

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 435
    if-nez p2, :cond_0

    .line 436
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030066

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 441
    :cond_0
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    .line 442
    const v1, 0x7f0b0151

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 444
    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 445
    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 446
    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 447
    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 448
    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->c()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 450
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 451
    const v2, 0x7f0b0153

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->a()Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardConfiguring()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->ALLOW_DENY:I

    :goto_0
    add-int/lit8 v2, v2, 0x0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getPermissions()I

    move-result v3

    and-int/2addr v2, v3

    if-nez v2, :cond_3

    .line 457
    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 461
    :goto_1
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_1

    .line 462
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 464
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 465
    if-eqz v2, :cond_4

    invoke-virtual {v2, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v2, v1

    .line 467
    :goto_2
    if-eqz v2, :cond_1

    .line 468
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 472
    :cond_1
    const v1, 0x7f0b023f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 473
    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->a()Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardConfiguring()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 474
    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 476
    new-instance v2, Lde/gdata/mobilesecurity/activities/applock/c;

    invoke-direct {v2, p0, v0}, Lde/gdata/mobilesecurity/activities/applock/c;-><init>(Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;Lde/gdata/mobilesecurity/activities/applock/LockedApp;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 489
    const v2, 0x7f0200f9

    .line 490
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getTimeUnlocked()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    move v0, v2

    .line 510
    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 514
    :goto_4
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;->a:Lde/gdata/mobilesecurity/activities/applock/DenialFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 515
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;->a:Lde/gdata/mobilesecurity/activities/applock/DenialFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getApplicationFont()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lde/gdata/mobilesecurity/util/TypeFaces;->getTypeFace(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 516
    invoke-static {p2, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    .line 518
    return-object p2

    .line 454
    :cond_2
    sget v2, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->ALLOW_GRANT:I

    goto :goto_0

    .line 459
    :cond_3
    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_1

    .line 465
    :cond_4
    const/4 v1, 0x0

    move-object v2, v1

    goto :goto_2

    .line 492
    :sswitch_0
    const v0, 0x7f0200fa

    .line 493
    goto :goto_3

    .line 495
    :sswitch_1
    const v0, 0x7f0200fd

    .line 496
    goto :goto_3

    .line 498
    :sswitch_2
    const v0, 0x7f0200fb

    .line 499
    goto :goto_3

    .line 501
    :sswitch_3
    const v0, 0x7f0200fc

    .line 502
    goto :goto_3

    .line 504
    :sswitch_4
    const v0, 0x7f0200fe

    .line 505
    goto :goto_3

    .line 512
    :cond_5
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_4

    .line 490
    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_0
        0x1e -> :sswitch_1
        0x3c -> :sswitch_2
        0x78 -> :sswitch_3
        0xf0 -> :sswitch_4
    .end sparse-switch
.end method

.method public isEnabled(I)Z
    .locals 2

    .prologue
    .line 423
    .line 424
    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->a()Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardConfiguring()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->ALLOW_DENY:I

    :goto_0
    add-int/lit8 v1, v0, 0x0

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getPermissions()I

    move-result v0

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    sget v0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->ALLOW_GRANT:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/activities/applock/LockedApp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 408
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;->clear()V

    .line 409
    if-eqz p1, :cond_0

    .line 410
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    .line 411
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 414
    :cond_0
    return-void
.end method
