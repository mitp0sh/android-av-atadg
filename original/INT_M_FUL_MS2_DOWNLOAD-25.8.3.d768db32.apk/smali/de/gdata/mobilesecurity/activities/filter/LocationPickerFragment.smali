.class public Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;


# static fields
.field public static latitude:D

.field public static longitude:D


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Ljava/lang/String;

.field private c:F

.field private d:Ljava/lang/String;

.field private e:Lcom/google/android/gms/maps/GoogleMap;

.field private f:Lcom/google/android/gms/maps/model/MarkerOptions;

.field private g:Lcom/google/android/gms/maps/model/Marker;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/TextView;

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 69
    sput-wide v0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->latitude:D

    sput-wide v0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->longitude:D

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 70
    iput-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->b:Ljava/lang/String;

    .line 71
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->c:F

    .line 72
    iput-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->d:Ljava/lang/String;

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->j:I

    .line 168
    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->d:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 129
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 131
    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    .line 132
    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 133
    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 134
    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 136
    :goto_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "LAT"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    :goto_1
    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v2

    sput-wide v2, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->latitude:D

    .line 137
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "LNG"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    :goto_2
    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v0

    sput-wide v0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->longitude:D

    .line 140
    return-void

    .line 134
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 136
    :cond_1
    const-wide v2, 0x4049bdb30f8c64feL    # 51.482027

    goto :goto_1

    .line 137
    :cond_2
    const-wide v0, 0x401cdcc6822ff089L    # 7.215601

    goto :goto_2
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 245
    const v0, 0x7f0b0253

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->h:Landroid/widget/Button;

    .line 247
    const v0, 0x7f0b0254

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->i:Landroid/widget/TextView;

    .line 248
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->h:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 249
    const v0, 0x7f0b0252

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->a:Landroid/widget/EditText;

    .line 250
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->a:Landroid/widget/EditText;

    new-instance v1, Lde/gdata/mobilesecurity/activities/filter/s;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/filter/s;-><init>(Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 258
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->h:Landroid/widget/Button;

    new-instance v1, Lde/gdata/mobilesecurity/activities/filter/t;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/filter/t;-><init>(Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->c()Lcom/google/android/gms/maps/SupportMapFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/SupportMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->e:Lcom/google/android/gms/maps/GoogleMap;

    .line 270
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->e:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->e:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 272
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-lt v0, v1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-gt v0, v1, :cond_1

    .line 274
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->e:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 278
    :goto_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->e:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    .line 279
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->e:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V

    .line 280
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->e:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnCameraChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;)V

    .line 281
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->e:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerDragListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;)V

    .line 282
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->e:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;)V

    .line 284
    :cond_0
    return-void

    .line 276
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->e:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->b()V

    return-void
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->b:Ljava/lang/String;

    return-object p1
.end method

.method private b()V
    .locals 6

    .prologue
    .line 143
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    sget-wide v2, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->latitude:D

    sget-wide v4, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->longitude:D

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 145
    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    iput-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->f:Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 146
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->f:Lcom/google/android/gms/maps/model/MarkerOptions;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 148
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->f:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 149
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->f:Lcom/google/android/gms/maps/model/MarkerOptions;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 150
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->g:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->g:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 153
    :cond_0
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->e:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v1, :cond_1

    .line 154
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->e:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->f:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v1

    iput-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->g:Lcom/google/android/gms/maps/model/Marker;

    .line 156
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->e:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->e:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v2

    iget v2, v2, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    invoke-static {v0, v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 158
    :cond_1
    sget-wide v0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->latitude:D

    sget-wide v2, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->longitude:D

    new-instance v4, Lde/gdata/mobilesecurity/activities/filter/w;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lde/gdata/mobilesecurity/activities/filter/w;-><init>(Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;Lde/gdata/mobilesecurity/activities/filter/o;)V

    invoke-static {v0, v1, v2, v3, v4}, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->getAddressByCoordinate(DDLandroid/os/Handler;)V

    .line 160
    return-void
.end method

.method private c()Lcom/google/android/gms/maps/SupportMapFragment;
    .locals 2

    .prologue
    .line 287
    .line 289
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 290
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 295
    :goto_0
    const v1, 0x7f0b0250

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/SupportMapFragment;

    return-object v0

    .line 292
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;)Lcom/google/android/gms/maps/model/Marker;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->g:Lcom/google/android/gms/maps/model/Marker;

    return-object v0
.end method

.method static synthetic d(Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;)F
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->c:F

    return v0
.end method

.method static synthetic f(Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->h:Landroid/widget/Button;

    return-object v0
.end method

.method public static getAddressByCoordinate(DDLandroid/os/Handler;)V
    .locals 8

    .prologue
    .line 375
    new-instance v1, Lde/gdata/mobilesecurity/activities/filter/u;

    move-wide v2, p0

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lde/gdata/mobilesecurity/activities/filter/u;-><init>(DDLandroid/os/Handler;)V

    .line 448
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 449
    return-void
.end method

.method public static getCoordinateByAdresss(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 452
    new-instance v0, Lde/gdata/mobilesecurity/activities/filter/v;

    invoke-direct {v0, p0, p1}, Lde/gdata/mobilesecurity/activities/filter/v;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    .line 535
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 536
    return-void
.end method

.method public static isValidString(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 539
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 540
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCameraChange(Lcom/google/android/gms/maps/model/CameraPosition;)V
    .locals 11

    .prologue
    const v10, 0x7f0d03a5

    const v9, 0x7f0d0311

    const/high16 v8, 0x447a0000    # 1000.0f

    const/high16 v0, 0x3f800000    # 1.0f

    .line 328
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->e:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/maps/Projection;->getVisibleRegion()Lcom/google/android/gms/maps/model/VisibleRegion;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/maps/model/VisibleRegion;->latLngBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    iget-object v1, v1, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    .line 329
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->e:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/maps/Projection;->getVisibleRegion()Lcom/google/android/gms/maps/model/VisibleRegion;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/maps/model/VisibleRegion;->latLngBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    iget-object v2, v2, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    .line 330
    new-instance v3, Landroid/graphics/PointF;

    iget-wide v4, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    double-to-float v4, v4

    iget-wide v6, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    double-to-float v1, v6

    invoke-direct {v3, v4, v1}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v1, Landroid/graphics/PointF;

    iget-wide v4, v2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    double-to-float v4, v4

    iget-wide v6, v2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    double-to-float v2, v6

    invoke-direct {v1, v4, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v3, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->distanceBetweenTwoPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v1

    .line 332
    div-float v2, v1, v8

    cmpg-float v2, v2, v0

    if-gez v2, :cond_1

    :goto_0
    iput v0, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->c:F

    .line 334
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->i:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->c:F

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    iget v0, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->j:I

    iget v1, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->c:F

    float-to-int v1, v1

    if-eq v0, v1, :cond_0

    .line 338
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v10}, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->c:F

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lde/gdata/mobilesecurity/util/MyUtil$SingleToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)V

    .line 341
    iget v0, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->c:F

    float-to-int v0, v0

    iput v0, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->j:I

    .line 343
    :cond_0
    return-void

    .line 332
    :cond_1
    div-float v0, v1, v8

    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 314
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->setHasOptionsMenu(Z)V

    .line 165
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 166
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 208
    const v0, 0x7f0f0004

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 209
    const v0, 0x7f0b0393

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 210
    if-nez v0, :cond_0

    .line 241
    :goto_0
    return-void

    .line 211
    :cond_0
    invoke-static {v0}, Landroid/support/v4/view/MenuItemCompat;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 212
    const v1, 0x7f0b0156

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 213
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f0d0220

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 214
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f0d021e

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 215
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lde/gdata/mobilesecurity/activities/filter/q;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/filter/q;-><init>(Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lde/gdata/mobilesecurity/activities/filter/r;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/filter/r;-><init>(Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 82
    invoke-super {p0, p3}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const v0, 0x7f03006b

    invoke-virtual {p1, v0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 85
    invoke-direct {p0, v7}, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->a(Landroid/view/View;)V

    .line 86
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->a()V

    .line 89
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->e:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_1

    .line 90
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    sget-wide v2, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->latitude:D

    sget-wide v4, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->longitude:D

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 91
    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    iput-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->f:Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 92
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->f:Lcom/google/android/gms/maps/model/MarkerOptions;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 93
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->f:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 94
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->f:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v1, v6}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 96
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-lt v1, v2, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-gt v1, v2, :cond_0

    .line 98
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->e:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/google/android/gms/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 100
    :cond_0
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->e:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 101
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->e:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->f:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v1

    iput-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->g:Lcom/google/android/gms/maps/model/Marker;

    .line 102
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->e:Lcom/google/android/gms/maps/GoogleMap;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v0, v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 103
    sget-wide v0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->latitude:D

    sget-wide v2, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->longitude:D

    new-instance v4, Lde/gdata/mobilesecurity/activities/filter/w;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lde/gdata/mobilesecurity/activities/filter/w;-><init>(Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;Lde/gdata/mobilesecurity/activities/filter/o;)V

    invoke-static {v0, v1, v2, v3, v4}, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->getAddressByCoordinate(DDLandroid/os/Handler;)V

    .line 105
    :cond_1
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d0295

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d057a

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0d0294

    invoke-virtual {p0, v3}, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0d0240

    invoke-virtual {p0, v4}, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lde/gdata/mobilesecurity/activities/filter/o;

    invoke-direct {v5, p0}, Lde/gdata/mobilesecurity/activities/filter/o;-><init>(Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;)V

    new-instance v6, Lde/gdata/mobilesecurity/activities/filter/p;

    invoke-direct {v6, p0}, Lde/gdata/mobilesecurity/activities/filter/p;-><init>(Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;)V

    invoke-static/range {v0 .. v6}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    move-result-object v0

    .line 120
    new-instance v1, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->wasZoomHintShown()Z

    move-result v1

    if-nez v1, :cond_2

    .line 121
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "HINT_DIALOG"

    invoke-virtual {v0, v1, v2}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 123
    :cond_2
    return-object v7
.end method

.method public onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 2

    .prologue
    .line 318
    iget-wide v0, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    sput-wide v0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->latitude:D

    .line 319
    iget-wide v0, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    sput-wide v0, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->longitude:D

    .line 320
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->hideKeyboard(Landroid/content/Context;)V

    .line 321
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->b()V

    .line 323
    return-void
.end method

.method public onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z
    .locals 1

    .prologue
    .line 364
    const/4 v0, 0x1

    return v0
.end method

.method public onMarkerDrag(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 0

    .prologue
    .line 348
    return-void
.end method

.method public onMarkerDragEnd(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 0

    .prologue
    .line 353
    return-void
.end method

.method public onMarkerDragStart(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 0

    .prologue
    .line 359
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 306
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 308
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 300
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 302
    return-void
.end method
