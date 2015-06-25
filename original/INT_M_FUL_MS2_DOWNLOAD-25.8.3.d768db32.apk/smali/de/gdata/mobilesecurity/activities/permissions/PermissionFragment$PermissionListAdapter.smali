.class public Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment$PermissionListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment;

.field private final b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 197
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment$PermissionListAdapter;->a:Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment;

    .line 198
    const v0, 0x1090004

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 199
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment$PermissionListAdapter;->b:Landroid/view/LayoutInflater;

    .line 200
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 218
    if-nez p2, :cond_0

    .line 219
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment$PermissionListAdapter;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030065

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 223
    :cond_0
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment$PermissionListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;

    .line 225
    const v1, 0x7f0b0152

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 226
    const v1, 0x7f0b0153

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;->getShortName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    const v1, 0x7f0b0154

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment$PermissionListAdapter;->a:Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 230
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment$PermissionListAdapter;->a:Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getApplicationFont()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lde/gdata/mobilesecurity/util/TypeFaces;->getTypeFace(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 231
    invoke-static {p2, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    .line 233
    return-object p2
.end method

.method public setData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 203
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment$PermissionListAdapter;->clear()V

    .line 204
    if-eqz p1, :cond_0

    .line 205
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;

    .line 206
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment$PermissionListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 209
    :cond_0
    return-void
.end method
