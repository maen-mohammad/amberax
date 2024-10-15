

abstract class OnBordingController{

  next();
  onPageChanged(int index);

}

class OnBordingControllerImp extends OnBordingController{
  
  
  
  int currentPage = 0 ;
  
  @override
  next() {
    // TODO: implement next
    throw UnimplementedError();
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    
  }

}