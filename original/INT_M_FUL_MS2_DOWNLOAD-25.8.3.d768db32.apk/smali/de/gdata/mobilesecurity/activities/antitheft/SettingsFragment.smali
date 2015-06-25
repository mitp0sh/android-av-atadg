.class public Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# static fields
.field public static final PAGE_POSITION:Ljava/lang/String; = "PAGE_POSITION"

.field private static a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

.field private static b:I

.field private static c:I

.field private static d:I


# instance fields
.field private e:Lcom/google/android/gms/maps/MapView;

.field private f:Lcom/google/android/gms/maps/GoogleMap;

.field private g:I

.field private h:Landroid/view/View;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/CheckBox;

.field private k:Landroid/widget/CheckBox;

.field private l:Landroid/widget/CheckBox;

.field private m:Landroid/widget/CheckBox;

.field private n:Landroid/widget/CheckBox;

.field private o:Landroid/widget/CheckBox;

.field private p:Landroid/widget/CheckBox;

.field private q:Landroid/widget/CheckBox;

.field private r:Landroid/widget/CheckBox;

.field private s:Z

.field private t:Landroid/content/Context;

.field private u:Lde/gdata/webportal/android/Preferences;

.field private v:Landroid/widget/ToggleButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    sput-object v0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 61
    const/16 v0, 0x320a

    sput v0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->b:I

    .line 62
    const/16 v0, 0x320b

    sput v0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->c:I

    .line 64
    const/16 v0, 0x14d

    sput v0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->d:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->s:Z

    .line 632
    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->k:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static a(I)Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;
    .locals 3

    .prologue
    .line 88
    new-instance v0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;-><init>()V

    .line 90
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 91
    const-string v2, "PAGE_POSITION"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 92
    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 94
    return-object v0
.end method

.method static synthetic a()Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->f:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v0, :cond_0

    .line 542
    const v0, 0x7f0b00f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->f:Lcom/google/android/gms/maps/GoogleMap;

    .line 543
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->f:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    .line 544
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->e()V

    .line 547
    :cond_0
    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;Z)Z
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->s:Z

    return p1
.end method

.method static synthetic b()I
    .locals 1

    .prologue
    .line 56
    sget v0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->d:I

    return v0
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->j:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic c(Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->m:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 454
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v3}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->getSmsReceivers(Landroid/content/Context;Z)Ljava/util/Vector;

    move-result-object v0

    .line 456
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 457
    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAllowRemoteLocate()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAllowRemoteRing()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAllowRemoteMute()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAllowRemoteLock()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAllowRemoteWipe()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAllowDevicePasswordSet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 460
    :cond_0
    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->checkedForSMSReceivers()Z

    move-result v0

    if-nez v0, :cond_1

    .line 461
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lde/gdata/mobilesecurity/activities/antitheft/WarnSmsReceiver;

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    .line 462
    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setCheckedForSMSReceivers(Z)V

    .line 466
    :cond_1
    sget-boolean v0, Lde/gdata/mobilesecurity/activities/antitheft/DeviceAdmin;->EXISTS:Z

    if-eqz v0, :cond_3

    .line 467
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/antitheft/DeviceAdmin;->isActive(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 468
    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAllowRemoteLock()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAllowRemoteWipe()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAllowDevicePasswordSet()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 469
    :cond_2
    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowRemoteLock(Z)V

    .line 470
    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowRemoteWipe(Z)V

    .line 471
    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowDevicePasswordSet(Z)V

    .line 473
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/antitheft/DeviceAdmin;->requestToAdd(Landroid/app/Activity;)V

    .line 475
    :cond_3
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 528
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->m:Landroid/widget/CheckBox;

    sget-object v1, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAllowRemoteLocate()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 529
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->p:Landroid/widget/CheckBox;

    sget-object v1, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAllowRemoteWipe()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 530
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->n:Landroid/widget/CheckBox;

    sget-object v1, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAllowRemoteRing()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 531
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->q:Landroid/widget/CheckBox;

    sget-object v1, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAllowRemoteLock()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 532
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->o:Landroid/widget/CheckBox;

    sget-object v1, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAllowRemoteMute()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 533
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->r:Landroid/widget/CheckBox;

    sget-object v1, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAllowDevicePasswordSet()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 534
    return-void
.end method

.method static synthetic d(Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->c()V

    return-void
.end method

.method static synthetic e(Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->p:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private e()V
    .locals 7

    .prologue
    const/high16 v6, 0x41700000    # 15.0f

    .line 553
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 554
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 556
    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->getLastKnownLocation(Landroid/location/LocationManager;Landroid/net/ConnectivityManager;)Landroid/location/Location;

    move-result-object v0

    .line 558
    if-eqz v0, :cond_0

    .line 559
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 561
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->f:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v2, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    const-string v3, "Marker"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    .line 562
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->f:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    .line 563
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->f:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {v1, v6}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 564
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->f:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {v6}, Lcom/google/android/gms/maps/CameraUpdateFactory;->zoomTo(F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    const/16 v2, 0x7d0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;ILcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V

    .line 566
    :cond_0
    return-void
.end method

.method static synthetic f(Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->n:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 599
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->s:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->u:Lde/gdata/webportal/android/Preferences;

    invoke-virtual {v0}, Lde/gdata/webportal/android/Preferences;->isWebPortalEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->s:Z

    .line 601
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->u:Lde/gdata/webportal/android/Preferences;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lde/gdata/webportal/android/Preferences;->setWebPortalLastSync(J)V

    .line 602
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->t:Landroid/content/Context;

    invoke-static {v0}, Lde/gdata/webportal/android/WebPortalSyncService;->startSync(Landroid/content/Context;)V

    .line 604
    :cond_0
    return-void
.end method

.method static synthetic g(Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->q:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public static getSmsReceivers(Landroid/content/Context;Z)Ljava/util/Vector;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 505
    const-string v0, "getSmsReceivers"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 506
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 508
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 509
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.SMS_RECEIVED"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 510
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 512
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 513
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 514
    iget v4, v0, Landroid/content/pm/ResolveInfo;->priority:I

    const v5, 0x7ffffff8

    if-lt v4, v5, :cond_0

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.android"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 515
    if-eqz p1, :cond_1

    .line 516
    invoke-virtual {v0, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 518
    :cond_1
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 521
    :cond_2
    return-object v1
.end method

.method static synthetic h(Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->o:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic i(Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->r:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic j(Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->l:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic k(Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->i:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public isMapDataAvailable()Z
    .locals 3

    .prologue
    .line 569
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 570
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 572
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 574
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 576
    sget-object v2, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isGoogleMapsApiEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 578
    :cond_0
    const/4 v0, 0x1

    .line 580
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 118
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 482
    const-string v0, "onActivityResult"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 484
    sget v0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->d:I

    if-ne p1, v0, :cond_1

    .line 485
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lde/gdata/mobilesecurity/intents/ActionManagerRegisterActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 488
    :cond_1
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/antitheft/DeviceAdmin;->isActive(Landroid/content/Context;)Z

    move-result v0

    .line 490
    if-nez v0, :cond_0

    .line 491
    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowRemoteLock(Z)V

    .line 492
    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowRemoteWipe(Z)V

    .line 493
    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowDevicePasswordSet(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "PAGE_POSITION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->g:I

    .line 102
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->t:Landroid/content/Context;

    .line 103
    new-instance v0, Lde/gdata/webportal/android/Preferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->t:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde/gdata/webportal/android/Preferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->u:Lde/gdata/webportal/android/Preferences;

    .line 105
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    sput-object v0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 107
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->isMapDataAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/maps/MapsInitializer;->initialize(Landroid/content/Context;)I

    .line 110
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "RECREATE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "RECREATE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 112
    :cond_1
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->c()V

    .line 113
    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    const v7, 0x7f0b00f2

    const v6, 0x7f0b00dd

    const v5, 0x7f0b0096

    const/4 v3, 0x0

    const/16 v4, 0x8

    .line 314
    const v0, 0x7f03002a

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 316
    const v0, 0x7f0b00ed

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->h:Landroid/view/View;

    .line 317
    const v0, 0x7f0b00f9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->j:Landroid/widget/CheckBox;

    .line 318
    const v0, 0x7f0b00fa

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->k:Landroid/widget/CheckBox;

    .line 319
    const v0, 0x7f0b00fe

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->l:Landroid/widget/CheckBox;

    .line 320
    const v0, 0x7f0b00f0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->m:Landroid/widget/CheckBox;

    .line 321
    const v0, 0x7f0b00f4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->n:Landroid/widget/CheckBox;

    .line 322
    const v0, 0x7f0b00f5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->o:Landroid/widget/CheckBox;

    .line 323
    const v0, 0x7f0b00f3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->p:Landroid/widget/CheckBox;

    .line 324
    const v0, 0x7f0b00f6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->q:Landroid/widget/CheckBox;

    .line 325
    const v0, 0x7f0b00f7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->r:Landroid/widget/CheckBox;

    .line 326
    const v0, 0x7f0b00fb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->i:Landroid/widget/TextView;

    .line 327
    const v0, 0x7f0b0103

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->v:Landroid/widget/ToggleButton;

    .line 329
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getApplicationFont()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lde/gdata/mobilesecurity/util/TypeFaces;->getTypeFace(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 330
    invoke-static {v1, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    .line 332
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->isMapDataAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 333
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/MapView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->e:Lcom/google/android/gms/maps/MapView;

    .line 334
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->e:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/maps/MapView;->onCreate(Landroid/os/Bundle;)V

    .line 335
    invoke-direct {p0, v1}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a(Landroid/view/View;)V

    .line 341
    :goto_0
    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getStoredIMSI()Ljava/lang/String;

    move-result-object v0

    .line 342
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyUtil;->getNormalizedIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 344
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 345
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->i:Landroid/widget/TextView;

    const v2, 0x7f0d00e4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 350
    :goto_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->i:Landroid/widget/TextView;

    new-instance v2, Lde/gdata/mobilesecurity/activities/antitheft/m;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/antitheft/m;-><init>(Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isOrangeOemVersion()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 384
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 385
    if-eqz v0, :cond_1

    .line 386
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 394
    :cond_1
    :goto_2
    const v0, 0x7f0b00df

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 396
    iget v2, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->g:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 397
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 398
    const v2, 0x7f0b00f8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 399
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->k:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 400
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->j:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 401
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 402
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->l:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 403
    const v2, 0x7f0b00fd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 404
    const v2, 0x7f0b00fc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 405
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 406
    const v2, 0x7f0b00ff

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 407
    const v2, 0x7f0b0100

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 408
    const v2, 0x7f0b0101

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 420
    :goto_3
    sget-object v2, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isActionCenterEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 421
    const v2, 0x7f0b00e0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lde/gdata/mobilesecurity/activities/antitheft/p;

    invoke-direct {v3, p0}, Lde/gdata/mobilesecurity/activities/antitheft/p;-><init>(Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 441
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->u:Lde/gdata/webportal/android/Preferences;

    invoke-virtual {v2}, Lde/gdata/webportal/android/Preferences;->isWebPortalEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 442
    if-eqz v0, :cond_2

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 447
    :cond_2
    :goto_4
    return-object v1

    .line 337
    :cond_3
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/MapView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->e:Lcom/google/android/gms/maps/MapView;

    .line 338
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->e:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/maps/MapView;->setVisibility(I)V

    goto/16 :goto_0

    .line 347
    :cond_4
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->i:Landroid/widget/TextView;

    const v2, 0x7f0d00e6

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 389
    :cond_5
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 390
    if-eqz v0, :cond_1

    .line 391
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 410
    :cond_6
    const v2, 0x7f0b00ef

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 411
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->m:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 412
    const v2, 0x7f0b00f1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 413
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->p:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 414
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->n:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 415
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->o:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 416
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->q:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 417
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->r:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 418
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 444
    :cond_7
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 608
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 609
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->isMapDataAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->e:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onDestroy()V

    .line 612
    :cond_0
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->f()V

    .line 613
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 585
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 586
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->f()V

    .line 587
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 617
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onLowMemory()V

    .line 618
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->isMapDataAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->e:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onLowMemory()V

    .line 621
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 591
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 592
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->isMapDataAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->e:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onPause()V

    .line 595
    :cond_0
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->f()V

    .line 596
    return-void
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 122
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 125
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->getView()Landroid/view/View;

    move-result-object v5

    .line 126
    if-nez v5, :cond_0

    .line 310
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->isMapDataAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->e:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onResume()V

    .line 129
    invoke-direct {p0, v5}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a(Landroid/view/View;)V

    .line 135
    :cond_1
    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getSMSCommandPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v3, v2

    move v0, v2

    .line 144
    :goto_1
    if-nez v3, :cond_2

    iget-object v6, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->h:Landroid/view/View;

    new-instance v7, Lde/gdata/mobilesecurity/activities/antitheft/j;

    invoke-direct {v7, p0}, Lde/gdata/mobilesecurity/activities/antitheft/j;-><init>(Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    :cond_2
    iget-object v6, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->h:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 155
    const v6, 0x7f0b00ee

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 158
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->d()V

    .line 160
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->j:Landroid/widget/CheckBox;

    sget-object v5, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v5}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->lockOnSimChange()Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 161
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->k:Landroid/widget/CheckBox;

    sget-object v5, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v5}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->locateOnSimChange()Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 162
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->l:Landroid/widget/CheckBox;

    sget-object v5, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v5}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isSignalFlareEnabled()Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 163
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->v:Landroid/widget/ToggleButton;

    sget-object v5, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v5}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isHeadsetProtectionEnabled()Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 166
    iget-object v5, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->m:Landroid/widget/CheckBox;

    if-eqz v3, :cond_5

    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAntitheftPermissions()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {v5, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 167
    iget-object v5, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->n:Landroid/widget/CheckBox;

    if-eqz v3, :cond_6

    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAntitheftPermissions()I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_6

    move v0, v1

    :goto_3
    invoke-virtual {v5, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 168
    iget-object v5, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->o:Landroid/widget/CheckBox;

    if-eqz v3, :cond_7

    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAntitheftPermissions()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_7

    move v0, v1

    :goto_4
    invoke-virtual {v5, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 169
    iget-object v5, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->j:Landroid/widget/CheckBox;

    if-eqz v3, :cond_8

    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAntitheftPermissions()I

    move-result v0

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_8

    move v0, v1

    :goto_5
    invoke-virtual {v5, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 172
    sget-boolean v0, Lde/gdata/mobilesecurity/activities/antitheft/DeviceAdmin;->EXISTS:Z

    if-eqz v0, :cond_d

    .line 173
    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->p:Landroid/widget/CheckBox;

    if-eqz v3, :cond_9

    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAntitheftPermissions()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_9

    move v0, v1

    :goto_6
    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 174
    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->q:Landroid/widget/CheckBox;

    if-eqz v3, :cond_a

    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAntitheftPermissions()I

    move-result v0

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_a

    move v0, v1

    :goto_7
    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 175
    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->r:Landroid/widget/CheckBox;

    if-eqz v3, :cond_b

    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAntitheftPermissions()I

    move-result v0

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_b

    move v0, v1

    :goto_8
    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 177
    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->j:Landroid/widget/CheckBox;

    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAntitheftPermissions()I

    move-result v0

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_c

    move v0, v1

    :goto_9
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 186
    :goto_a
    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getRemotePasswordResetSender()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getEmailForLocation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 187
    :cond_3
    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->k:Landroid/widget/CheckBox;

    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAntitheftPermissions()I

    move-result v0

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_e

    move v0, v1

    :goto_b
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 188
    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->l:Landroid/widget/CheckBox;

    sget-object v0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAntitheftPermissions()I

    move-result v0

    const v4, 0x8000

    and-int/2addr v0, v4

    if-eqz v0, :cond_f

    move v0, v1

    :goto_c
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 189
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->v:Landroid/widget/ToggleButton;

    sget-object v3, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAntitheftPermissions()I

    move-result v3

    const/high16 v4, 0x10000

    and-int/2addr v3, v4

    if-eqz v3, :cond_10

    :goto_d
    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 198
    :goto_e
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->k:Landroid/widget/CheckBox;

    new-instance v1, Lde/gdata/mobilesecurity/activities/antitheft/q;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/antitheft/q;-><init>(Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 211
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->j:Landroid/widget/CheckBox;

    new-instance v1, Lde/gdata/mobilesecurity/activities/antitheft/r;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/antitheft/r;-><init>(Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->m:Landroid/widget/CheckBox;

    new-instance v1, Lde/gdata/mobilesecurity/activities/antitheft/s;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/antitheft/s;-><init>(Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 245
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->p:Landroid/widget/CheckBox;

    new-instance v1, Lde/gdata/mobilesecurity/activities/antitheft/t;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/antitheft/t;-><init>(Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 254
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->n:Landroid/widget/CheckBox;

    new-instance v1, Lde/gdata/mobilesecurity/activities/antitheft/u;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/antitheft/u;-><init>(Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 263
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->q:Landroid/widget/CheckBox;

    new-instance v1, Lde/gdata/mobilesecurity/activities/antitheft/v;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/antitheft/v;-><init>(Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 272
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->o:Landroid/widget/CheckBox;

    new-instance v1, Lde/gdata/mobilesecurity/activities/antitheft/w;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/antitheft/w;-><init>(Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 281
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->r:Landroid/widget/CheckBox;

    new-instance v1, Lde/gdata/mobilesecurity/activities/antitheft/x;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/antitheft/x;-><init>(Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 291
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->l:Landroid/widget/CheckBox;

    new-instance v1, Lde/gdata/mobilesecurity/activities/antitheft/k;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/antitheft/k;-><init>(Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 300
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->v:Landroid/widget/ToggleButton;

    new-instance v1, Lde/gdata/mobilesecurity/activities/antitheft/l;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/antitheft/l;-><init>(Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_4
    move v3, v1

    move v0, v4

    .line 141
    goto/16 :goto_1

    :cond_5
    move v0, v2

    .line 166
    goto/16 :goto_2

    :cond_6
    move v0, v2

    .line 167
    goto/16 :goto_3

    :cond_7
    move v0, v2

    .line 168
    goto/16 :goto_4

    :cond_8
    move v0, v2

    .line 169
    goto/16 :goto_5

    :cond_9
    move v0, v2

    .line 173
    goto/16 :goto_6

    :cond_a
    move v0, v2

    .line 174
    goto/16 :goto_7

    :cond_b
    move v0, v2

    .line 175
    goto/16 :goto_8

    :cond_c
    move v0, v2

    .line 177
    goto/16 :goto_9

    .line 180
    :cond_d
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->p:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->q:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->r:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->j:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_a

    :cond_e
    move v0, v2

    .line 187
    goto/16 :goto_b

    :cond_f
    move v0, v2

    .line 188
    goto/16 :goto_c

    :cond_10
    move v1, v2

    .line 189
    goto/16 :goto_d

    .line 193
    :cond_11
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->k:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 194
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->l:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 195
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->v:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    goto/16 :goto_e
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 625
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 627
    const-string v0, "RECREATE"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 629
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->e:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/MapView;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 630
    return-void
.end method
