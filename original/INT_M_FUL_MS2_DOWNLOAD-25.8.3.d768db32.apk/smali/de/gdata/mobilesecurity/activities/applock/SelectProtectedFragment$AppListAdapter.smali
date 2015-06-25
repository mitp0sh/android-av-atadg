.class public Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;
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
.field final synthetic a:Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;

.field private final b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 308
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;->a:Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;

    .line 309
    const v0, 0x1090004

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 310
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;->b:Landroid/view/LayoutInflater;

    .line 311
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const v6, 0x7f0b0152

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 337
    if-nez p2, :cond_0

    .line 338
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030065

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 343
    :cond_0
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    .line 345
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 346
    const v1, 0x7f0b0151

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 348
    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 349
    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 350
    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 351
    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 352
    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->c()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Vector;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 354
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 355
    const v2, 0x7f0b0153

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    sget v3, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->ALLOW_REQUEST:I

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->ALLOW_UNLOCK:I

    :goto_0
    add-int/2addr v2, v3

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getPermissions()I

    move-result v3

    and-int/2addr v2, v3

    if-nez v2, :cond_3

    .line 359
    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 363
    :goto_1
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_1

    .line 364
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 366
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 367
    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v1, v0

    .line 369
    :goto_2
    if-eqz v1, :cond_1

    .line 370
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 374
    :cond_1
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;->a:Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 375
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;->a:Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getApplicationFont()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lde/gdata/mobilesecurity/util/TypeFaces;->getTypeFace(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 376
    invoke-static {p2, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    .line 378
    return-object p2

    .line 357
    :cond_2
    sget v2, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->ALLOW_LOCK:I

    goto :goto_0

    .line 361
    :cond_3
    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_1

    .line 367
    :cond_4
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_2
.end method

.method public isEnabled(I)Z
    .locals 2

    .prologue
    .line 320
    sget v1, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->ALLOW_REQUEST:I

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->ALLOW_UNLOCK:I

    :goto_0
    add-int/2addr v1, v0

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getPermissions()I

    move-result v0

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    sget v0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->ALLOW_LOCK:I

    goto :goto_0

    :cond_1
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
    .line 325
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;->clear()V

    .line 326
    if-eqz p1, :cond_0

    .line 327
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    .line 328
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 331
    :cond_0
    return-void
.end method
