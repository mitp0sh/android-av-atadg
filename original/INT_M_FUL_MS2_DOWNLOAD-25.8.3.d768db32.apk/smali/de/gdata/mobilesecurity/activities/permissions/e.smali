.class Lde/gdata/mobilesecurity/activities/permissions/e;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;

.field private b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 159
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/permissions/e;->a:Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 160
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/e;->b:Landroid/view/LayoutInflater;

    .line 161
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/e;->a:Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;->a(Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/e;->a:Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;->a(Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 175
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 180
    .line 182
    if-nez p2, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/e;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030065

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 184
    :cond_0
    const v0, 0x7f0b0152

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 185
    const v1, 0x7f0b0153

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 186
    const v2, 0x7f0b0154

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 188
    :try_start_0
    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/permissions/e;->a:Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 189
    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/permissions/e;->a:Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;

    invoke-static {v3}, Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;->a(Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/16 v7, 0x1000

    invoke-virtual {v4, v3, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 190
    iget-object v3, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 192
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 193
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 194
    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/permissions/e;->a:Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x7f0a005e

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 195
    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/permissions/e;->a:Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x7f0a005f

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 197
    iget-object v0, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    move v3, v6

    .line 199
    :goto_0
    :try_start_1
    iget-object v0, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/permissions/e;->a:Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;

    const v8, 0x7f0d000e

    invoke-virtual {v4, v8}, Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 209
    :goto_1
    if-eqz v3, :cond_2

    .line 210
    invoke-virtual {p2, v6}, Landroid/view/View;->setClickable(Z)V

    .line 211
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 212
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 219
    :goto_2
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/e;->a:Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 220
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/e;->a:Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getApplicationFont()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lde/gdata/mobilesecurity/util/TypeFaces;->getTypeFace(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 221
    invoke-static {p2, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    .line 223
    return-object p2

    :cond_1
    move v3, v5

    .line 197
    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    move-object v3, v0

    move v4, v5

    .line 205
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package \'"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/e;->a:Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;->a(Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\' couldn\'t be found :"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/String;)V

    .line 206
    const v0, 0x7f0d000d

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    move v3, v4

    goto :goto_1

    .line 214
    :cond_2
    invoke-virtual {p2, v5}, Landroid/view/View;->setClickable(Z)V

    .line 215
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 216
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2

    .line 204
    :catch_1
    move-exception v0

    move v4, v3

    move-object v3, v0

    goto :goto_3
.end method
