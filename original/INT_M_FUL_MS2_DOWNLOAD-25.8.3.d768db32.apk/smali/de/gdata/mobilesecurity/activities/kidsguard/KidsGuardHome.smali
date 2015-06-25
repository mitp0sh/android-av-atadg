.class public Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;
.super Lde/gdata/mobilesecurity/intents/GdFragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/view/ActionMode$Callback;


# static fields
.field public static final ACTION_UPDATE_USAGE_TIME:Ljava/lang/String; = "de.gdata.mobilesecurity2.ACTION_UPDATE_USAGE_TIME"

.field public static final INITIALIZE:Ljava/lang/String; = "INIT"

.field public static final SETUP_PROFILE:Ljava/lang/String; = "SETUP_PROFILE"

.field public static final USAGE_LIMIT:Ljava/lang/String; = "USAGE_LIMIT"

.field public static final USAGE_TIME:Ljava/lang/String; = "USAGE_TIME"

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static final d:[Ljava/lang/String;

.field public static volatile lastUnlock:J

.field public static mActivity:Landroid/app/Activity;

.field private static o:I

.field private static t:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static v:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Z

.field private B:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private C:Landroid/content/BroadcastReceiver;

.field private D:Landroid/content/BroadcastReceiver;

.field private E:Landroid/widget/LinearLayout;

.field private F:Landroid/widget/TextView;

.field private G:Landroid/widget/LinearLayout;

.field private H:Lde/gdata/mobilesecurity/receiver/IPackageModifiedListener;

.field private final I:Landroid/content/BroadcastReceiver;

.field a:Landroid/support/v7/view/ActionMode;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:I

.field private j:Lde/gdata/mobilesecurity/util/GdDialogFragment;

.field private k:Landroid/app/Dialog;

.field private l:Landroid/app/AlertDialog;

.field private m:Ljava/lang/String;

.field private n:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

.field private p:Landroid/support/v4/view/ViewPager;

.field private q:Lcom/viewpagerindicator/PageIndicator;

.field private r:Landroid/support/v4/view/PagerAdapter;

.field private s:Landroid/support/v4/view/PagerAdapter;

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 127
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.dialer"

    aput-object v1, v0, v3

    const-string v1, "com.sonyericsson.android.socialphonebook"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "com.android.htcdialer"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.google.android.dialer"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.android.phone"

    aput-object v2, v0, v1

    sput-object v0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->b:[Ljava/lang/String;

    .line 130
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "com.android.phone"

    aput-object v1, v0, v3

    sput-object v0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->c:[Ljava/lang/String;

    .line 132
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "com.android.contacts"

    aput-object v1, v0, v3

    sput-object v0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->d:[Ljava/lang/String;

    .line 160
    sput v3, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->o:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;-><init>()V

    .line 139
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->e:Z

    .line 140
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->f:Z

    .line 142
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->g:Z

    .line 143
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->h:Z

    .line 144
    iput v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->i:I

    .line 153
    const-string v0, "0000"

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->m:Ljava/lang/String;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->w:Ljava/util/List;

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->x:Ljava/util/List;

    .line 178
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->y:Z

    .line 179
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->z:Z

    .line 180
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->A:Z

    .line 182
    new-instance v0, Lde/gdata/mobilesecurity/activities/kidsguard/am;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/am;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->B:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 197
    new-instance v0, Lde/gdata/mobilesecurity/activities/kidsguard/ax;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/ax;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->C:Landroid/content/BroadcastReceiver;

    .line 216
    new-instance v0, Lde/gdata/mobilesecurity/activities/kidsguard/ay;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/ay;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->D:Landroid/content/BroadcastReceiver;

    .line 1178
    new-instance v0, Lde/gdata/mobilesecurity/activities/kidsguard/av;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/av;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->H:Lde/gdata/mobilesecurity/receiver/IPackageModifiedListener;

    .line 1219
    new-instance v0, Lde/gdata/mobilesecurity/activities/kidsguard/aw;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/aw;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->I:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a()I
    .locals 1

    .prologue
    .line 106
    sget v0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->o:I

    return v0
.end method

.method static synthetic a(I)I
    .locals 0

    .prologue
    .line 106
    sput p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->o:I

    return p0
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;Lde/gdata/mobilesecurity/util/GdDialogFragment;)Lde/gdata/mobilesecurity/util/GdDialogFragment;
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->j:Lde/gdata/mobilesecurity/util/GdDialogFragment;

    return-object p1
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->n:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 1188
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 1189
    if-nez v2, :cond_1

    .line 1214
    :cond_0
    :goto_0
    return-void

    .line 1190
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 1192
    const/16 v1, 0x8

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 1196
    :goto_1
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1198
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1199
    sget-object v0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1200
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1201
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1193
    :catch_0
    move-exception v1

    .line 1194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PackageAddedReceiver: insufficiant package information: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_1

    .line 1204
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1205
    sget-object v0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1206
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->e()V

    goto :goto_0

    .line 1208
    :cond_5
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1209
    sget-object v0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->t:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1210
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->d()V

    .line 1211
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->e()V

    goto :goto_0
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;I)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->b(I)V

    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->a(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b()I
    .locals 2

    .prologue
    .line 106
    sget v0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->o:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->o:I

    return v0
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->p:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private b(I)V
    .locals 5

    .prologue
    const v4, 0x7f0b0200

    const v3, 0x7f0b01ff

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 230
    invoke-virtual {p0, v3}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 231
    invoke-virtual {p0, v4}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 233
    if-nez p1, :cond_0

    invoke-virtual {p0, v3}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 234
    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, v4}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 236
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->F:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->n:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardOverallUsageTimeLimited()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 237
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->F:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->G:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 239
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 242
    :cond_2
    return-void
.end method

.method static synthetic c(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->l:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    const v2, 0x7f0201ac

    .line 261
    const v0, 0x7f0b01fa

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 263
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->n:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getKidsguardHomeBackground()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 280
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 283
    :goto_0
    return-void

    .line 265
    :pswitch_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 268
    :pswitch_1
    const v1, 0x7f0201ad

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 271
    :pswitch_2
    const v1, 0x7f0201ae

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 274
    :pswitch_3
    const v1, 0x7f0201aa

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 277
    :pswitch_4
    const v1, 0x7f0201ab

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 263
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private d()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 362
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->u:Ljava/util/ArrayList;

    .line 364
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->n:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardAllowEmergencyCalls()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 365
    sget-object v2, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->b:[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 366
    sget-object v5, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->t:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 365
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 367
    :cond_0
    sget-object v5, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->t:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 370
    :cond_1
    const-string v0, "|samsung|motorola|"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 371
    sget-object v2, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->d:[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_2
    if-ge v0, v3, :cond_3

    aget-object v4, v2, v0

    .line 372
    sget-object v5, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->t:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->t:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 371
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 377
    :cond_3
    sget-object v2, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->b:[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_3
    if-ge v0, v3, :cond_5

    aget-object v4, v2, v0

    .line 378
    sget-object v5, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->t:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 379
    sget-object v2, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->c:[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_4
    if-ge v0, v3, :cond_5

    aget-object v4, v2, v0

    .line 380
    sget-object v5, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->t:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 379
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 377
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 385
    :cond_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->v:Ljava/util/HashMap;

    .line 386
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 388
    sget-object v0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->t:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 389
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 390
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    invoke-virtual {v2, v4, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 393
    if-eqz v0, :cond_6

    .line 394
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 395
    invoke-virtual {v0, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 396
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/de.gdata.mobilesecurity."

    const-string v7, "/."

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 399
    sget-object v6, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->u:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 400
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/.intents.Main"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 401
    sget-object v6, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->u:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    sget-object v6, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->v:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 409
    :cond_8
    const v0, 0x7f0b01ff

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lde/gdata/mobilesecurity/activities/kidsguard/az;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/az;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    const v0, 0x7f0b0200

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lde/gdata/mobilesecurity/activities/kidsguard/ba;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/ba;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    return-void
.end method

.method static synthetic d(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->i()V

    return-void
.end method

.method static synthetic e(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;)Lde/gdata/mobilesecurity/util/GdDialogFragment;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->j:Lde/gdata/mobilesecurity/util/GdDialogFragment;

    return-object v0
.end method

.method private e()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 424
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 426
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->getItemCount()I

    move-result v1

    mul-int/2addr v1, v0

    sget-object v2, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->u:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 427
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->w:Ljava/util/List;

    new-instance v2, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;

    sget-object v3, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->u:Ljava/util/ArrayList;

    sget-object v4, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->v:Ljava/util/HashMap;

    invoke-direct {v2, v0, v3, v4}, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;-><init>(ILjava/util/ArrayList;Ljava/util/HashMap;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 430
    :cond_0
    const v0, 0x7f0b011d

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->p:Landroid/support/v4/view/ViewPager;

    .line 431
    const v0, 0x7f0b01fe

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/PageIndicator;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->q:Lcom/viewpagerindicator/PageIndicator;

    .line 433
    const v0, 0x7f0b01fd

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->E:Landroid/widget/LinearLayout;

    .line 435
    new-instance v0, Lde/gdata/mobilesecurity/activities/kidsguard/bh;

    invoke-direct {v0, p0, v5}, Lde/gdata/mobilesecurity/activities/kidsguard/bh;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;Lde/gdata/mobilesecurity/activities/kidsguard/am;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->s:Landroid/support/v4/view/PagerAdapter;

    .line 436
    new-instance v0, Lde/gdata/mobilesecurity/activities/kidsguard/bg;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->w:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lde/gdata/mobilesecurity/activities/kidsguard/bg;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->r:Landroid/support/v4/view/PagerAdapter;

    .line 437
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->p:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->r:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 438
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->q:Lcom/viewpagerindicator/PageIndicator;

    invoke-interface {v0, v5}, Lcom/viewpagerindicator/PageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 439
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->q:Lcom/viewpagerindicator/PageIndicator;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->p:Landroid/support/v4/view/ViewPager;

    invoke-interface {v0, v1}, Lcom/viewpagerindicator/PageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 440
    return-void
.end method

.method static synthetic f(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->k:Landroid/app/Dialog;

    return-object v0
.end method

.method private f()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 443
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->n:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardBlockIncomingCalls()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->n:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    const-string v3, "white"

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setBlockIncomingCalls(Ljava/lang/String;)V

    .line 447
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->n:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardWiFiOff()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 448
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 449
    iget-boolean v3, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->f:Z

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    iput-boolean v3, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->h:Z

    .line 450
    :cond_1
    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 452
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 453
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 454
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 455
    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->D:Landroid/content/BroadcastReceiver;

    invoke-super {p0, v3, v0}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 457
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->y:Z

    .line 460
    :cond_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->n:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardFixVolumeKeys()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 461
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 463
    iget-boolean v3, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->f:Z

    if-eqz v3, :cond_3

    .line 464
    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->n:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setKidsguardVolumeRing(I)V

    .line 465
    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->n:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setKidsguardVolumeMedia(I)V

    .line 466
    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->n:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setKidsguardVolumeNotification(I)V

    .line 468
    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->n:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setKidsguardVolumeSystem(I)V

    .line 469
    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->n:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    invoke-virtual {v3, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setKidsguardRingerMode(I)V

    .line 473
    :cond_3
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->n:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardAirplaneMode()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 475
    :try_start_0
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->f:Z

    if-eqz v0, :cond_4

    .line 476
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "airplane_mode_on"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->g:Z

    .line 479
    :cond_4
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 482
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 483
    const-string v1, "state"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 484
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->sendBroadcast(Landroid/content/Intent;)V

    .line 486
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 487
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->C:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 489
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->z:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    :cond_5
    :goto_1
    return-void

    :cond_6
    move v0, v2

    .line 476
    goto :goto_0

    .line 491
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic g(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->F:Landroid/widget/TextView;

    return-object v0
.end method

.method private g()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 497
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->n:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardBlockIncomingCalls()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->n:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setBlockIncomingCalls(Ljava/lang/String;)V

    .line 501
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->n:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardWiFiOff()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 502
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 503
    iget-boolean v2, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->h:Z

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 505
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->y:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->D:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 508
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->n:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardAirplaneMode()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 510
    :try_start_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->g:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 513
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 514
    const-string v2, "state"

    iget-boolean v3, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->g:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 515
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->sendBroadcast(Landroid/content/Intent;)V

    .line 517
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->z:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->C:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    :cond_2
    :goto_1
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->y:Z

    .line 524
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->z:Z

    .line 525
    return-void

    :cond_3
    move v0, v1

    .line 510
    goto :goto_0

    .line 519
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private h()Ljava/lang/String;
    .locals 4

    .prologue
    const v3, 0x7f070006

    .line 905
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->n:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getParentsAppProtectionCustomQuestion()Ljava/lang/String;

    move-result-object v0

    .line 907
    const-string v1, "1"

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->n:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getParentsAppProtectionQuestion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 908
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 916
    :cond_0
    :goto_0
    return-object v0

    .line 909
    :cond_1
    const-string v1, "2"

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->n:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getParentsAppProtectionQuestion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 910
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0

    .line 911
    :cond_2
    const-string v1, "3"

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->n:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getParentsAppProtectionQuestion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 912
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    goto :goto_0

    .line 913
    :cond_3
    const-string v1, "4"

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->n:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getParentsAppProtectionQuestion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 914
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 940
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 941
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 942
    return-void
.end method

.method private j()V
    .locals 1

    .prologue
    .line 1135
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->a:Landroid/support/v7/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1136
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->a:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 1137
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->a:Landroid/support/v7/view/ActionMode;

    .line 1139
    :cond_0
    return-void
.end method

.method public static killActivity()V
    .locals 1

    .prologue
    .line 356
    sget-object v0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 357
    sget-object v0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 359
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1033
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1052
    :sswitch_0
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 1036
    :sswitch_1
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->j()V

    goto :goto_0

    .line 1046
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1033
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x4 -> :sswitch_1
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
    .end sparse-switch
.end method

.method public getItemCount()I
    .locals 3

    .prologue
    .line 249
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 251
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 252
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getKidsguardLandscapeColumns()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getKidsguardLandscapeRows()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/2addr v0, v1

    .line 255
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getKidsguardPortraitColumns()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getKidsguardPortraitRows()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method public onActionItemClicked(Landroid/support/v7/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 1122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Item ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 1124
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 1127
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->j()V

    .line 1129
    const/4 v0, 0x0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 602
    invoke-super {p0, p1, p2, p3}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 603
    return-void
.end method

.method public onClickOkButton()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 641
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->k:Landroid/app/Dialog;

    const v1, 0x7f0b026f

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 643
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 645
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->g()V

    .line 647
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v6, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 650
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v6, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 654
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->n:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAppProtectionActivated(Z)V

    .line 655
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->n:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setKidsguardToddlerActive(Z)V

    .line 656
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->finish()V

    .line 658
    new-instance v0, Lde/gdata/mobilesecurity/mms/ProfileSelector;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/mms/ProfileSelector;-><init>(Landroid/content/Context;)V

    const-string v1, "Private"

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/mms/ProfileSelector;->apply(Ljava/lang/String;)Z

    .line 660
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 661
    const-string v1, "FINISH_MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 662
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->sendBroadcast(Landroid/content/Intent;)V

    .line 664
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 665
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 666
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 667
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->startActivity(Landroid/content/Intent;)V

    .line 673
    :cond_0
    :goto_0
    return-void

    .line 669
    :cond_1
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 670
    new-instance v0, Lde/gdata/mobilesecurity/activities/kidsguard/bf;

    invoke-direct {v0, p0, v4}, Lde/gdata/mobilesecurity/activities/kidsguard/bf;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;Z)V

    .line 671
    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/kidsguard/bf;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 287
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 288
    const v0, 0x7f03005a

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->setContentView(I)V

    .line 289
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->setDefaultKeyMode(I)V

    .line 292
    :try_start_0
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 293
    const-class v1, Landroid/view/ViewConfiguration;

    const-string v2, "sHasPermanentMenuKey"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 295
    if-eqz v1, :cond_0

    .line 296
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 297
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :cond_0
    :goto_0
    sput-object p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->mActivity:Landroid/app/Activity;

    .line 303
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 304
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 305
    const-string v1, "INIT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 306
    iput-boolean v3, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->f:Z

    .line 314
    :goto_1
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->n:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 315
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->n:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getParentsAppProtectionPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->m:Ljava/lang/String;

    .line 317
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->c()V

    .line 319
    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->getAppAccessControlList()Ljava/util/Vector;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->t:Ljava/util/Vector;

    .line 321
    sget-object v0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->t:Ljava/util/Vector;

    if-eqz v0, :cond_1

    sget-object v0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->t:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 322
    :cond_1
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lde/gdata/mobilesecurity/services/WatcherService;->loadProtectedAppList(Landroid/content/Context;Z)V

    .line 323
    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->getAppAccessControlList()Ljava/util/Vector;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->t:Ljava/util/Vector;

    .line 326
    :cond_2
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->d()V

    .line 327
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->e()V

    .line 328
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->f()V

    .line 330
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 331
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 332
    const-string v1, "SETUP_PROFILE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 333
    const-string v1, "SETUP_PROFILE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 334
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SETUP_PROFILE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 339
    :cond_3
    const v0, 0x7f0b01fd

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->G:Landroid/widget/LinearLayout;

    .line 340
    const v0, 0x7f0b01fc

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->F:Landroid/widget/TextView;

    .line 342
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->F:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->n:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardOverallUsageTimeLimited()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 343
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->F:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 344
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->G:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    .line 345
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->G:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->F:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 348
    :cond_4
    return-void

    .line 308
    :cond_5
    const-string v1, "INIT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->f:Z

    .line 309
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "INIT"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_1

    .line 312
    :cond_6
    iput-boolean v3, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->f:Z

    goto/16 :goto_1

    .line 299
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public onCreateActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 1113
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->q:Lcom/viewpagerindicator/PageIndicator;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->B:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, v1}, Lcom/viewpagerindicator/PageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 1115
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->p:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->b(I)V

    .line 1117
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7

    .prologue
    const v6, 0x7f0d021e

    const/4 v5, 0x1

    const/4 v4, -0x2

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 681
    packed-switch p1, :pswitch_data_0

    .line 859
    :goto_0
    return-object v0

    .line 683
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d012c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0100

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d00fe

    new-instance v2, Lde/gdata/mobilesecurity/activities/kidsguard/bd;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/bd;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d00ff

    new-instance v2, Lde/gdata/mobilesecurity/activities/kidsguard/bc;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/bc;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d021f

    new-instance v2, Lde/gdata/mobilesecurity/activities/kidsguard/bb;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/bb;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 701
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0

    .line 705
    :pswitch_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 706
    const v2, 0x7f03002e

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 707
    const v0, 0x7f0b0110

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 708
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 710
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d014b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0240

    new-instance v2, Lde/gdata/mobilesecurity/activities/kidsguard/ao;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/ao;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lde/gdata/mobilesecurity/activities/kidsguard/an;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/an;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lde/gdata/mobilesecurity/activities/kidsguard/be;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/be;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->l:Landroid/app/AlertDialog;

    .line 758
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->l:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 759
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->l:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 762
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0141

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0148

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0146

    new-instance v2, Lde/gdata/mobilesecurity/activities/kidsguard/ar;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/ar;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lde/gdata/mobilesecurity/activities/kidsguard/aq;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/aq;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lde/gdata/mobilesecurity/activities/kidsguard/ap;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/ap;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 826
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    goto/16 :goto_0

    .line 829
    :pswitch_3
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 830
    const v2, 0x7f03005b

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 832
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->k:Landroid/app/Dialog;

    .line 833
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->k:Landroid/app/Dialog;

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 834
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->k:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 836
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->k:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setLayout(II)V

    .line 838
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->k:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 839
    const v0, 0x7f0b0203

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 840
    new-instance v2, Lde/gdata/mobilesecurity/activities/kidsguard/at;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/at;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 847
    const v0, 0x7f0b027d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lde/gdata/mobilesecurity/activities/kidsguard/au;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/au;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 853
    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/kidsguard/NumpadHelper;->initNumpad(Landroid/view/View;)V

    .line 855
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->k:Landroid/app/Dialog;

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 856
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->k:Landroid/app/Dialog;

    goto/16 :goto_0

    .line 681
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 579
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 583
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v0, v2, :cond_0

    .line 584
    const/4 v0, 0x2

    .line 586
    :goto_0
    const/16 v2, 0x458

    const v3, 0x7f0d02de

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02007d

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 588
    invoke-static {v2, v0}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 590
    const/16 v2, 0x45b

    const v3, 0x7f0d0321

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02007c

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 592
    invoke-static {v2, v0}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 594
    const/16 v2, 0x459

    const v3, 0x7f0d038c

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02007e

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 595
    invoke-static {v2, v0}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 597
    return v1

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 529
    invoke-super {p0}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->onDestroy()V

    .line 531
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->z:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->C:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 532
    :cond_0
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->y:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->D:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 534
    :cond_1
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->y:Z

    .line 535
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->z:Z

    .line 536
    return-void
.end method

.method public onDestroyActionMode(Landroid/support/v7/view/ActionMode;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 1150
    const v0, 0x7f0b01fe

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1152
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->n:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->p:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setKidsguardHomeBackground(I)V

    .line 1154
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->c()V

    .line 1156
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->p:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->r:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 1157
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->p:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->i:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 1159
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->q:Lcom/viewpagerindicator/PageIndicator;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->p:Landroid/support/v4/view/ViewPager;

    invoke-interface {v0, v1}, Lcom/viewpagerindicator/PageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 1160
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->q:Lcom/viewpagerindicator/PageIndicator;

    invoke-interface {v0}, Lcom/viewpagerindicator/PageIndicator;->notifyDataSetChanged()V

    .line 1161
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->q:Lcom/viewpagerindicator/PageIndicator;

    iget v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->i:I

    invoke-interface {v0, v1}, Lcom/viewpagerindicator/PageIndicator;->setCurrentItem(I)V

    .line 1162
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->q:Lcom/viewpagerindicator/PageIndicator;

    invoke-interface {v0, v4}, Lcom/viewpagerindicator/PageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 1164
    const v0, 0x7f0b01ff

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1165
    const v0, 0x7f0b0200

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1166
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->E:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1168
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->F:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->n:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardOverallUsageTimeLimited()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1169
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->F:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1170
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->G:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1171
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->G:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->F:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1175
    :cond_0
    iput-object v4, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->a:Landroid/support/v7/view/ActionMode;

    .line 1176
    return-void
.end method

.method public onHintClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 868
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->n:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getParentsAppProtectionEmail()Ljava/lang/String;

    move-result-object v0

    .line 869
    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->n:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getParentsAppProtectionQuestion()Ljava/lang/String;

    move-result-object v3

    .line 870
    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->n:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getParentsAppProtectionCustomQuestion()Ljava/lang/String;

    move-result-object v4

    .line 871
    iget-object v5, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->n:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v5}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getParentsAppProtectionAnswer()Ljava/lang/String;

    move-result-object v5

    .line 874
    const-string v6, ""

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 875
    :goto_0
    const-string v6, ""

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f0d0102

    invoke-virtual {p0, v4}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 878
    :cond_0
    :goto_1
    if-nez v0, :cond_3

    if-nez v1, :cond_3

    .line 898
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 874
    goto :goto_0

    :cond_2
    move v1, v2

    .line 875
    goto :goto_1

    .line 879
    :cond_3
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 880
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->showDialog(I)V

    goto :goto_2

    .line 881
    :cond_4
    if-eqz v1, :cond_5

    .line 882
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->showDialog(I)V

    goto :goto_2

    .line 883
    :cond_5
    if-eqz v0, :cond_6

    .line 884
    invoke-virtual {p0, v7}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->showDialog(I)V

    goto :goto_2

    .line 886
    :cond_6
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    .line 887
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v3, "com.google"

    invoke-virtual {v1, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 888
    array-length v3, v1

    :goto_3
    if-ge v2, v3, :cond_7

    aget-object v4, v1, v2

    .line 889
    iget-object v5, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 890
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->n:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v1, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setParentsAppProtectionEmail(Ljava/lang/String;)V

    .line 896
    :cond_7
    invoke-virtual {p0, v7}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->showDialog(I)V

    goto :goto_2

    .line 888
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 607
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 637
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_1
    return v0

    .line 609
    :pswitch_1
    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->e:Z

    .line 611
    const-class v0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsPreferences;

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 616
    :pswitch_2
    invoke-virtual {p0, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->a:Landroid/support/v7/view/ActionMode;

    .line 617
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->E:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 618
    const v0, 0x7f0b01fe

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 620
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->p:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->i:I

    .line 622
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->p:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->s:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 623
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->p:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->n:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getKidsguardHomeBackground()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 625
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->q:Lcom/viewpagerindicator/PageIndicator;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->p:Landroid/support/v4/view/ViewPager;

    invoke-interface {v0, v1}, Lcom/viewpagerindicator/PageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 626
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->q:Lcom/viewpagerindicator/PageIndicator;

    invoke-interface {v0}, Lcom/viewpagerindicator/PageIndicator;->notifyDataSetChanged()V

    .line 627
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->q:Lcom/viewpagerindicator/PageIndicator;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->n:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getKidsguardHomeBackground()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/viewpagerindicator/PageIndicator;->setCurrentItem(I)V

    goto :goto_0

    .line 632
    :pswitch_3
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->showDialog(I)V

    goto :goto_1

    .line 607
    nop

    :pswitch_data_0
    .packed-switch 0x458
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 540
    invoke-super {p0}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->onPause()V

    .line 541
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->H:Lde/gdata/mobilesecurity/receiver/IPackageModifiedListener;

    invoke-static {v0}, Lde/gdata/mobilesecurity/receiver/PackageModifiedReceiver;->removePackageModifiedListener(Lde/gdata/mobilesecurity/receiver/IPackageModifiedListener;)V

    .line 542
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->H:Lde/gdata/mobilesecurity/receiver/IPackageModifiedListener;

    invoke-static {v0}, Lde/gdata/mobilesecurity/receiver/PackageAddedReceiver;->removePackageModifiedListener(Lde/gdata/mobilesecurity/receiver/IPackageModifiedListener;)V

    .line 544
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->a:Landroid/support/v7/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->a:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 546
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->I:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->I:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 547
    :cond_1
    return-void
.end method

.method public onPrepareActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 1143
    invoke-static {p0}, Lde/gdata/mobilesecurity/util/MyUtil;->fixActionModeTextColor(Landroid/app/Activity;)V

    .line 1145
    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 551
    invoke-super {p0}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->onResume()V

    .line 552
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->H:Lde/gdata/mobilesecurity/receiver/IPackageModifiedListener;

    invoke-static {v0}, Lde/gdata/mobilesecurity/receiver/PackageModifiedReceiver;->addPackageModifiedListener(Lde/gdata/mobilesecurity/receiver/IPackageModifiedListener;)V

    .line 553
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->H:Lde/gdata/mobilesecurity/receiver/IPackageModifiedListener;

    invoke-static {v0}, Lde/gdata/mobilesecurity/receiver/PackageAddedReceiver;->addPackageModifiedListener(Lde/gdata/mobilesecurity/receiver/IPackageModifiedListener;)V

    .line 555
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->e:Z

    if-eqz v0, :cond_1

    .line 556
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 558
    :goto_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->getItemCount()I

    move-result v3

    mul-int/2addr v3, v0

    sget-object v4, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->u:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 559
    new-instance v3, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;

    sget-object v4, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->u:Ljava/util/ArrayList;

    sget-object v5, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->v:Ljava/util/HashMap;

    invoke-direct {v3, v0, v4, v5}, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;-><init>(ILjava/util/ArrayList;Ljava/util/HashMap;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 562
    :cond_0
    new-instance v0, Lde/gdata/mobilesecurity/activities/kidsguard/bg;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v0, p0, v3, v2}, Lde/gdata/mobilesecurity/activities/kidsguard/bg;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    .line 563
    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->p:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 564
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->p:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 566
    iput-object v2, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->w:Ljava/util/List;

    .line 568
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->q:Lcom/viewpagerindicator/PageIndicator;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->p:Landroid/support/v4/view/ViewPager;

    invoke-interface {v0, v2}, Lcom/viewpagerindicator/PageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 569
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->q:Lcom/viewpagerindicator/PageIndicator;

    invoke-interface {v0}, Lcom/viewpagerindicator/PageIndicator;->notifyDataSetChanged()V

    .line 570
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->q:Lcom/viewpagerindicator/PageIndicator;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/viewpagerindicator/PageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 571
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->q:Lcom/viewpagerindicator/PageIndicator;

    invoke-interface {v0, v1}, Lcom/viewpagerindicator/PageIndicator;->setCurrentItem(I)V

    .line 574
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->I:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "de.gdata.mobilesecurity2.ACTION_UPDATE_USAGE_TIME"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 575
    return-void
.end method
