.class Lde/gdata/mobilesecurity/activities/permissions/d;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;

.field private b:Landroid/view/LayoutInflater;

.field private c:[Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 407
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/permissions/d;->a:Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 408
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/d;->b:Landroid/view/LayoutInflater;

    .line 409
    invoke-static {p1}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->c(Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 410
    invoke-static {p1}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->c(Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->c(Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/d;->c:[Ljava/lang/Integer;

    .line 412
    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/SortedSet",
            "<",
            "Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 421
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/d;->a:Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->c(Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/d;->c:[Ljava/lang/Integer;

    aget-object v1, v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/d;->a:Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->c(Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/d;->a:Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->c(Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 403
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/permissions/d;->a(I)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 426
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    .line 431
    if-nez p2, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/d;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030063

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 433
    :cond_0
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/permissions/d;->a(I)Ljava/util/SortedSet;

    move-result-object v2

    .line 435
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/SortedSet;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 436
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 437
    invoke-interface {v2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;

    .line 438
    const v1, 0x7f0b0152

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 439
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;->getIconId()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 440
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    invoke-interface {v2}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 444
    :cond_2
    const v0, 0x7f0b0153

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 445
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    :cond_3
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/d;->a:Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 449
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/d;->a:Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getApplicationFont()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lde/gdata/mobilesecurity/util/TypeFaces;->getTypeFace(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 450
    invoke-static {p2, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    .line 452
    return-object p2
.end method
