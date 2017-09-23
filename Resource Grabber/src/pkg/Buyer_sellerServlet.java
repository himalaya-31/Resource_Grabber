package pkg;

import java.io.IOException;
import javax.servlet.http.*;

import java.util.List;
import java.util.Map;

import javax.servlet.http.*;

import com.google.appengine.api.blobstore.BlobKey;
import com.google.appengine.api.blobstore.BlobstoreService;
import com.google.appengine.api.blobstore.BlobstoreServiceFactory;

@SuppressWarnings({ "serial", "unused" })
public class Buyer_sellerServlet extends HttpServlet {
	public void service(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		resp.setContentType("text/plain");
		
         BlobstoreService blobstoreService = BlobstoreServiceFactory.getBlobstoreService();
		
		Map<String, List<BlobKey>> blobs = blobstoreService.getUploads(req);
		
		List<BlobKey> blobKeys = blobs.get("myFile");
		
		resp.sendRedirect("/buye?blob-key=" + blobKeys.get(0).getKeyString());
		
		
		
		
		
	}
}
